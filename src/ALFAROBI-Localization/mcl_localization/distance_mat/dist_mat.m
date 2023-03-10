% img = zeros(800,1100);
% 
%  line = [550 100 550 700; ...
%          100 100 1000 100; ...
%          100 700 1000 700; ...
%          100 100 100  700; ...
%          1000 100 1000 700; ...
%          100 150 200 150; ...
%          100 650 200 650; ...
%          200 150 200 650; ...
%          900 150 1000 150; ...
%          900 650 1000 650; ...
%          900 150 900 650; ...
%          40 270 100 270; ...
%          40 270 40 530; ...
%          40 530 100 530; ...
%          1000 270 1060 270; ...
%          1060 270 1060 530; ...
%          1000 530 1060 530];
%  circle = [550 400 75];
%  penalty = [310 400 10; ...
%             790 400 10];
% % img = images.roi.drawrectangle('Position',[-450 -300 900 600]);
% % img = insertShape(img,'Rectangle',rectangle,'LineWidth',1, 'Color', 'white');
% img = insertShape(img,'Line',line,'LineWidth',1, 'Color', 'white');
% img = insertShape(img,'Circle',circle,'LineWidth',1, 'Color', 'white');
% % img = insertShape(img,'FilledCircle',penalty,'LineWidth',5, 'Color', 'white', 'Opacity', 1);
% 
% figure; imshow(img);
% 
% %error function
% c = 250*250;
% errfcn = @(n) 1-(c/(c+n.^2));
% 
% distance = bwdist(img);
% scaledDistance = distance/max(distance(:));
% %error_fcn = arrayfun(errfcn, scaledDistance)
% 
% figure;  imshow(scaledDistance)
% % title('Scaled')
% figure; imshow(1-scaledDistance)
% % title('Normalized')
% % h = gca;
% % h.Visible = 'On';
% 
% fileID = fopen('dist-1.bin','w');
% fwrite(fileID,scaledDistance,'double');
% fclose(fileID);
% 
% fileID = fopen('norm_dist-1.bin','w');
% fwrite(fileID,1-scaledDistance, 'double');
% fclose(fileID);

fileID = fopen('norm_dist.bin');
dist = fread(fileID,[800 1100],'double');
figure;imshow(dist)
