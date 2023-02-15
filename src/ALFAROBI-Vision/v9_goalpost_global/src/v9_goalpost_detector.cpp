#include<v9_goalpost_global/v9_goalpost_global.h>

Mat gambar;
Mat gambarClone;
Point titikStart;
bool afterDownBeforeUp = false;
Rect rectROI;


GoalPostDetector::GoalPostDetector()
                :KOLOM(640.0), BARIS(480.0),
                nh_(ros::this_node::getName()),
                it_(this->nh_)
{
    goal_pos_pub = nh_.advertise<geometry_msgs::Point>("goal_pos", 100);

    path_yaml = ros::package::getPath("v9_goalpost_global") + "/config/LookUpTable.yaml";
    
    get_frame_camera = it_.subscribe("/usb_cam_node/image_raw", 100, &GoalPostDetector::GetFrameCamCallback, this);

    kosong = bacaYAML(path_yaml.c_str());
    if(kosong.rows == 0)
        kosong = Mat::zeros(1, (int)pow(64,3), CV_32SC1);
}

GoalPostDetector::~GoalPostDetector(){

}

Mat GoalPostDetector::bacaYAML(string namafile){
    FileStorage fs(namafile, FileStorage::READ);
    Mat temp;
    fs["LookUpTable"] >> temp;
    fs.release();

    return temp;
}

void GoalPostDetector::simpanTabel(Mat matrix, string namafile){
    FileStorage fs(namafile, FileStorage::WRITE);
    fs << "LookUpTable" << matrix;
    fs.release();
}

void GoalPostDetector::masukanMatrix(int nilai, Mat gambar, Rect kotak){
    int xrs, yrs, xrf, yrf;
    xrs = kotak.x;
    yrs = kotak.y;
    xrf = xrs + kotak.width;
    yrf = yrs + kotak.height;

    for(int xx=xrs+1; xx<xrf; xx++){
        for(int yy=yrs+1; yy<yrf; yy++){
            Vec3b pixel = gambar.at<Vec3b>(yy,xx);

            R = (int)((int)pixel[2] >> 2);
            G = (int)((int)pixel[1] >> 2);
            B = (int)((int)pixel[0] >> 2);

            kosong.at<int>(B*pow(64,2) + G*64 + R) = nilai;
        }
    }
}


Mat GoalPostDetector::captureInCanvas(Mat frame){
    Mat hitam = Mat::zeros(frame.size(), CV_8UC3);

    for(int x=0; x< frame.cols; x++){
        for(int y=0; y<frame.rows; y++){
            Vec3b pixel = frame.at<Vec3b>(y,x);
            R = (int)((int)pixel[2] >> 2);
            G = (int)((int)pixel[1] >> 2);
            B = (int)((int)pixel[0] >> 2);

            switch(kosong.at<int>(B*pow(64,2) + G*64 + R)){
                case 1: hitam.at<Vec3b>(y,x) = Vec3b(0, 255, 0); break;
#ifdef DEBUG_PUTIH
                case 3: hitam.at<Vec3b>(y,x) = Vec3b(0, 0, 255); break;
#endif
            }
        }
    }
    return hitam;
}


void GoalPostDetector::GetFrameCamCallback(const sensor_msgs::ImageConstPtr& msg){
    try{
        if(msg->encoding.compare(sensor_msgs::image_encodings::MONO8)==0){
            img_encoding_ = IMG_MONO;
        }else if(msg->encoding.compare(sensor_msgs::image_encodings::RGB8)==0){
            img_encoding_ = IMG_RGB;
        }
        cvImgPtr = cv_bridge::toCvCopy(msg,msg->encoding);

    }catch(cv_bridge::Exception &e){
        ROS_ERROR("%s",e.what());
    }
}

void GoalPostDetector::process(){
    if(cvImgPtr == nullptr)return;

    frame = cvImgPtr->image;
    imshow("frame", frame);

    resize(frame,frame,Size(), KOLOM/frame.cols, BARIS/frame.rows);

    Mat ycrcb;
    cvtColor(frame, ycrcb, CV_BGR2YCrCb);
    Mat* YCrCb = new Mat[3];
    split(ycrcb, YCrCb);

    Mat imY = YCrCb[0];
    Mat imYX, imYY;
    Sobel(imY, imYX,CV_8U, 1,0,3);
    Sobel(imY, imYY,CV_8U, 0,1,3);

    // imshow("imYX", imYX);
    // imshow("imYY", imYY);

    delete[] YCrCb;

    Mat roiRGB = captureInCanvas(frame);

    int key = waitKey(1);

    if((char)key == 'k'){
        namedWindow("kalibrasi frame", CV_WINDOW_NORMAL);
        setMouseCallback("kalibrasi frame", onMouse);
        int nilai = 0;

        gambar = frame;
        gambarClone = gambar.clone();

        while(true){
            int inkey = waitKey(10);
            imshow("kalibrasi frame", gambar);
            bool kalib = false;
            if((rectROI.width != 0) || (rectROI.height != 0) ){
                kalib = true;
                switch((char)inkey){
                case 'h':nilai=1;
                    masukanMatrix(nilai, gambar, rectROI);
                    cout << "saved hijau" << endl;
                    break;
                case 'o':nilai=2;
                    masukanMatrix(nilai, gambar, rectROI);
                    cout << "saved orange" << endl;
                    break;
                case 'p':nilai=3;
                    masukanMatrix(nilai, gambar, rectROI);
                    cout << "saved putih" << endl;
                    break;
                case 'd':nilai = 0;
                    masukanMatrix(nilai, gambar, rectROI);
                    cout << "saved other" << endl;
                    break;
                }
                if((char)inkey == 's')
                    simpanTabel(kosong, path_yaml.c_str());
            }
            if((char)inkey == 'c'){
                simpanTabel(kosong, path_yaml.c_str());
                destroyWindow("kalibrasi frame");
                if(kalib)
                    destroyWindow("roi");
                break;
              }
        }
    }

    Mat roiGray;
    cvtColor(roiRGB, roiGray, CV_BGR2GRAY);
    vector<vector<Point> >konturS;
    findContours(roiGray, konturS, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE);

    vector<Point> konturT;

    for(size_t i=0; i< konturS.size(); i++){
        if(contourArea(konturS.at(i)) >= 200)
            konturT.insert(konturT.end(), konturS.at(i).begin(), konturS.at(i).end());
    }

    Mat ireng = Mat::zeros(roiGray.size(), CV_8UC3);
    vector<Point> hull;
    if(konturT.size() != 0){
        convexHull(konturT, hull, false);
        konturS.clear();
        konturS.push_back(hull);
        drawContours(ireng, konturS,0,Scalar::all(255),-1);
    }

    ireng /= 255;

    multiply(ireng, frame, ireng);
    imshow("cropped", ireng);

    cvtColor(ireng, ireng, CV_BGR2GRAY);

    int state = HITAM;
    Point titik_0, titik_1;

    vector<Point> candidate_base_putih;

    for(int r=0; r<ireng.rows; r++){
        for(int c=0; c<ireng.cols; c++){
            int nilaiPixel = (int)ireng.at<uchar>(r,c);

            if(nilaiPixel){
                state = HIJAU;
            }
            if(state == HIJAU){
                Vec3b pixel = frame.at<Vec3b>(r,c);
                R = (int)((int)pixel[2] >> 2);
                G = (int)((int)pixel[1] >> 2);
                B = (int)((int)pixel[0] >> 2);

                if(kosong.at<int>(B*pow(64,2) + G*64 + R) == 3){
                    titik_0 = Point(c,r);
                    candidate_base_putih.push_back(titik_0);
                    state = PUTIH;
                }
            }

            if(state == PUTIH){
                if(kosong.at<int>(B*pow(64,2) + G*64 + R) != 3){
                    titik_1 = Point(c,r);
                    if(titik_1.x - titik_0.x <21)
                        candidate_base_putih.push_back(titik_1);
                    state = KELUAR;
                }
              }
        }
    }

    Mat pCand = Mat::zeros(frame.size(), CV_8UC1);

    for(size_t a=0; a<candidate_base_putih.size(); a++)
        pCand.at<uchar>(candidate_base_putih.at(a).y, candidate_base_putih.at(a).x) = uchar(1);

    bitwise_and(ireng, pCand, pCand);
    erode(pCand,pCand,getStructuringElement(MORPH_RECT, Size(3,3)));
    findNonZero(pCand,candidate_base_putih);

    Mat hitam = Mat::zeros(2,10, CV_8UC1);
    double _min, _max;
    Point min_loc, max_loc;
    vector<Point> ujung;
    bool isi = false;

    vector<Point> fixed_candidate_base_putih;

    for(size_t s=0; s<candidate_base_putih.size(); s++){
        isi = false;
        Point titik__ = candidate_base_putih.at(s);
        for(int rr=titik__.y; rr>0; rr--){
            for(int r=0; r<2; r++){
                for(int c=-5; c<5; c++){
                    int batasY = titik__.y-2+r > 0? titik__.y-2+r : 0;
                    int batasX = titik__.x+c > 0? titik__.x+c : 0;
                    hitam.at<uchar>(r,c+5) = imYX.at<uchar>(batasY, batasX);
                }
            }

            minMaxLoc(hitam, &_min, &_max, &min_loc, &max_loc);

            Point gotoUjung = titik__ + max_loc;
            Mat neigHijau = Mat::zeros(10,10,CV_8UC1);
            for(int q=-5; q<5; q++){
                for(int p=-5; p<5; p++){
                    neigHijau.at<uchar>(q+5,p+5) = ireng.at<uchar>(gotoUjung.y + q, gotoUjung.x + p);
                }
            }
            vector<Point> nPointHijau;
            findNonZero(neigHijau, nPointHijau);

            if(_max < uchar(int(0.5*(int)imYX.at<uchar>(titik__.y, titik__.x)))){
                    if(nPointHijau.size() < 10){
                        ujung.push_back(gotoUjung);
                        fixed_candidate_base_putih.push_back(candidate_base_putih[s]);
                    }

                isi = true;
                break;
            }else{
                titik__.y = titik__.y-2+max_loc.y;
                titik__.x = titik__.x-5+max_loc.x;
            }
        }

        if(!isi){
            ujung.push_back(titik__ + max_loc);
            fixed_candidate_base_putih.push_back(candidate_base_putih[s]);
        }
    }

    Mat scanHor = Mat::zeros(11,21,CV_8UC1);
    vector<Vec3d> kiri, kanan;

    int tengahX = 0;
    for(size_t u=0; u<ujung.size(); u++)
        tengahX += ujung.at(u).x;

    if(ujung.size() != 0)
        tengahX /= ujung.size();

    for(size_t q=0; q<ujung.size(); q++){
        Point tUjung = ujung.at(q);
        int batasX, batasY;
        for(int r=-5;r<=5; r++){
            for(int k=-10;k<=10;k++){
                batasX = tengahX+r > 0 ? tengahX+r:0;
                batasY = tUjung.y+k > 0 ? tUjung.y+k:0;
                scanHor.at<uchar>(r+5, k+10) = imYY.at<uchar>(batasX,batasY);
            }
        }
        double _min, _max;
        Point min_loc, max_loc;
        minMaxLoc(scanHor,&_min, &_max,&min_loc,&max_loc);

        int acuX = tengahX + max_loc.x -5;
        int okeY = tUjung.y + max_loc.y - 10;

        Vec3d siapPush = Vec3d(q, acuX, okeY);

        if(acuX < tUjung.x){
            kanan.push_back(siapPush);
        }
        else if(acuX > tUjung.x){
            kiri.push_back(siapPush);
        }
    }

    Point avKanan = Point(0,0), avKiri = Point(0,0);
    for(size_t kn=0; kn<kanan.size(); kn++){
        line(frame,ujung.at(kanan.at(kn)[0]) ,Point(kanan.at(kn)[1], kanan.at(kn)[2]),Scalar(150, 145, 20),4);
        avKanan += candidate_base_putih.at(kanan.at(kn)[0]);
    }
    for(int kr=0; kr<kiri.size(); kr++){
        line(frame,ujung.at(kiri.at(kr)[0]) ,Point(kiri.at(kr)[1], kiri.at(kr)[2]),Scalar(150, 145, 20), 4);
        avKiri += candidate_base_putih.at(kiri.at(kr)[0]);
    }


    int rX, rY;
    Point pr;

    int lX, lY;
    Point pl;

    Point tengah;
    bool detected = false;

    if((kanan.size() != 0) && (kiri.size() != 0)){
        detected = true;
        rX = avKanan.x / kanan.size();
        rY = avKanan.y / kanan.size();
        pr = Point(rX, rY);

        lX = avKiri.x / kiri.size();
        lY = avKiri.y / kiri.size();
        pl = Point(lX, lY);

        tengah = (pr + pl)/2;
        cout << "DUA -------------\t" << tengah;
    }else if((kanan.size() == 0) && (kiri.size() != 0)){
        detected = true;
        lX = avKiri.x / kiri.size();
        lY = avKiri.y / kiri.size();
        pl = Point(lX, lY);

        tengah = pl + Point(30,0);
        cout << "KIRI -------------\t" << tengah;
    }else if((kanan.size() != 0) && (kiri.size() == 0)){
        detected = true;
        rX = avKanan.x / kanan.size();
        rY = avKanan.y / kanan.size();
        pr = Point(rX, rY);

        tengah = pr - Point(30,0);
        cout << "KANAN -------------\t" << tengah;
    }else
        tengah = Point(240, 160);

    if(detected){
        circle(frame, tengah, 5, Scalar(234, 19, 145), -1);
    }

    for(size_t a=0; a<candidate_base_putih.size(); a++){
        line(frame, candidate_base_putih.at(a)-Point(3,0), candidate_base_putih.at(a) + Point(3,0)
             ,Scalar(0,0,255),1);
    }
    for(size_t a=0; a<ujung.size(); a++){
        line(frame, fixed_candidate_base_putih.at(a), ujung.at(a),Scalar(255,0,0),1);
    }

    namedWindow("fframe", CV_WINDOW_NORMAL);
    imshow("fframe", frame);

    if(key == 27){
        destroyAllWindows();
      }
    waitKey(1);
}

static void onMouse(int event, int x, int y, int, void*){
    int xrs, yrs, lx, ly;

    if(afterDownBeforeUp){
        gambar = gambarClone.clone();
        xrs = min(titikStart.x, x);
        yrs = min(titikStart.y, y);
        lx = max(titikStart.x, x) - min(titikStart.x, x);
        ly = max(titikStart.y, y) - min(titikStart.y, y);
        rectROI = Rect(xrs, yrs, lx+1, ly+1);

        rectangle(gambar, rectROI,Scalar(255, 0, 0), 1);
    }
    if(event == EVENT_LBUTTONDOWN){
        titikStart = Point(x,y);
        rectROI = Rect(x,y,0,0);
        afterDownBeforeUp = true;

    }else if(event == EVENT_LBUTTONUP){
        Mat roi(gambarClone.clone(), rectROI);
        imshow("roi", roi);

        afterDownBeforeUp = false;
    }
}
