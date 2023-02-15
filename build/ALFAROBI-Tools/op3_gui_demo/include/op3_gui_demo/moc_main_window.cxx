/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/ALFAROBI-Tools/op3_gui_demo/include/op3_gui_demo/main_window.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_robotis_op__MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      52,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      24,   23,   23,   23, 0x0a,
      57,   51,   23,   23, 0x0a,
      91,   51,   23,   23, 0x0a,
     125,   51,   23,   23, 0x0a,
     163,   51,   23,   23, 0x0a,
     200,   51,   23,   23, 0x0a,
     234,   51,   23,   23, 0x0a,
     267,   51,   23,   23, 0x0a,
     301,   51,   23,   23, 0x0a,
     339,   51,   23,   23, 0x0a,
     375,   51,   23,   23, 0x0a,
     410,   51,   23,   23, 0x0a,
     444,   51,   23,   23, 0x0a,
     477,   51,   23,   23, 0x0a,
     513,   51,   23,   23, 0x0a,
     556,   51,   23,   23, 0x0a,
     601,   51,   23,   23, 0x0a,
     643,   51,   23,   23, 0x0a,
     686,   51,   23,   23, 0x0a,
     728,   51,   23,   23, 0x0a,
     771,   51,   23,   23, 0x0a,
     816,   51,   23,   23, 0x0a,
     858,   51,   23,   23, 0x0a,
     901,   51,   23,   23, 0x0a,
     943,   51,   23,   23, 0x0a,
     970,   51,   23,   23, 0x0a,
     998,   51,   23,   23, 0x0a,
    1025,   51,   23,   23, 0x0a,
    1060,   51,   23,   23, 0x0a,
    1094,   51,   23,   23, 0x0a,
    1138, 1131,   23,   23, 0x0a,
    1193,   51,   23,   23, 0x0a,
    1219,   51,   23,   23, 0x0a,
    1246,   51,   23,   23, 0x0a,
    1267,   51,   23,   23, 0x0a,
    1300,   51,   23,   23, 0x0a,
    1332,   51,   23,   23, 0x0a,
    1367, 1131,   23,   23, 0x0a,
    1418,   51,   23,   23, 0x0a,
    1455,   51,   23,   23, 0x0a,
    1493,   51,   23,   23, 0x0a,
    1529,   23,   23,   23, 0x0a,
    1549,   51,   23,   23, 0x0a,
    1568, 1563,   23,   23, 0x0a,
    1619, 1609,   23,   23, 0x0a,
    1645, 1636,   23,   23, 0x0a,
    1677, 1131,   23,   23, 0x0a,
    1736, 1131,   23,   23, 0x0a,
    1801, 1131,   23,   23, 0x0a,
    1865, 1131,   23,   23, 0x0a,
    1922,   23,   23,   23, 0x0a,
    1947,   23,   23,   23, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_robotis_op__MainWindow[] = {
    "robotis_op::MainWindow\0\0"
    "on_actionAbout_triggered()\0check\0"
    "on_button_init_pose_clicked(bool)\0"
    "on_button_init_gyro_clicked(bool)\0"
    "on_button_walking_start_clicked(bool)\0"
    "on_button_walking_stop_clicked(bool)\0"
    "on_zmp_start_button_clicked(bool)\0"
    "on_zmp_stop_button_clicked(bool)\0"
    "on_zmp_reset_button_clicked(bool)\0"
    "on_button_param_refresh_clicked(bool)\0"
    "on_button_param_apply_clicked(bool)\0"
    "on_button_param_save_clicked(bool)\0"
    "on_zmp_apply_button_clicked(bool)\0"
    "on_zmp_save_button_clicked(bool)\0"
    "on_zmp_refresh_button_clicked(bool)\0"
    "on_button_capture_step_apply_clicked(bool)\0"
    "on_button_capture_step_refresh_clicked(bool)\0"
    "on_button_capture_step_save_clicked(bool)\0"
    "on_button_capture_step_start_clicked(bool)\0"
    "on_button_capture_step_stop_clicked(bool)\0"
    "on_button_quintic_walk_apply_clicked(bool)\0"
    "on_button_quintic_walk_refresh_clicked(bool)\0"
    "on_button_quintic_walk_save_clicked(bool)\0"
    "on_button_quintic_walk_start_clicked(bool)\0"
    "on_button_quintic_walk_stop_clicked(bool)\0"
    "on_left_kick_clicked(bool)\0"
    "on_right_kick_clicked(bool)\0"
    "on_stop_kick_clicked(bool)\0"
    "on_kick_apply_button_clicked(bool)\0"
    "on_kick_save_button_clicked(bool)\0"
    "on_kick_refresh_button_clicked(bool)\0"
    "params\0updateKickingParams(kicking_module_msgs::KickingParam)\0"
    "on_Left_SSP_clicked(bool)\0"
    "on_Right_SSP_clicked(bool)\0"
    "on_DSP_clicked(bool)\0"
    "on_fb_apply_button_clicked(bool)\0"
    "on_fb_save_button_clicked(bool)\0"
    "on_fb_refresh_button_clicked(bool)\0"
    "updateFeedbackParams(feedback_msgs::FeedbackParam)\0"
    "on_checkBox_balance_on_clicked(bool)\0"
    "on_checkBox_balance_off_clicked(bool)\0"
    "on_head_center_button_clicked(bool)\0"
    "updateLoggingView()\0setMode(bool)\0"
    "mode\0updateCurrentJointMode(std::vector<int>)\0"
    "mode_name\0setMode(QString)\0pan,tilt\0"
    "updateHeadAngles(double,double)\0"
    "updateWalkingParams(op3_walking_module_msgs::WalkingParam)\0"
    "updateZMPWalkingParams(zmp_walking_module_msgs::ZMPWalkingParam)\0"
    "updateCaptureStepParams(capture_step_module_msgs::WalkingParam)\0"
    "updateQuinticWalkParams(quintic_walk_msgs::WalkingParam)\0"
    "walkingCommandShortcut()\0setHeadAngle()\0"
};

void robotis_op::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->on_actionAbout_triggered(); break;
        case 1: _t->on_button_init_pose_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->on_button_init_gyro_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->on_button_walking_start_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->on_button_walking_stop_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->on_zmp_start_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->on_zmp_stop_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->on_zmp_reset_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->on_button_param_refresh_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->on_button_param_apply_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->on_button_param_save_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 11: _t->on_zmp_apply_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 12: _t->on_zmp_save_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 13: _t->on_zmp_refresh_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 14: _t->on_button_capture_step_apply_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 15: _t->on_button_capture_step_refresh_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 16: _t->on_button_capture_step_save_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 17: _t->on_button_capture_step_start_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 18: _t->on_button_capture_step_stop_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 19: _t->on_button_quintic_walk_apply_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 20: _t->on_button_quintic_walk_refresh_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 21: _t->on_button_quintic_walk_save_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 22: _t->on_button_quintic_walk_start_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 23: _t->on_button_quintic_walk_stop_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 24: _t->on_left_kick_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 25: _t->on_right_kick_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 26: _t->on_stop_kick_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 27: _t->on_kick_apply_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 28: _t->on_kick_save_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 29: _t->on_kick_refresh_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 30: _t->updateKickingParams((*reinterpret_cast< kicking_module_msgs::KickingParam(*)>(_a[1]))); break;
        case 31: _t->on_Left_SSP_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 32: _t->on_Right_SSP_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 33: _t->on_DSP_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 34: _t->on_fb_apply_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 35: _t->on_fb_save_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 36: _t->on_fb_refresh_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 37: _t->updateFeedbackParams((*reinterpret_cast< feedback_msgs::FeedbackParam(*)>(_a[1]))); break;
        case 38: _t->on_checkBox_balance_on_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 39: _t->on_checkBox_balance_off_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 40: _t->on_head_center_button_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 41: _t->updateLoggingView(); break;
        case 42: _t->setMode((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 43: _t->updateCurrentJointMode((*reinterpret_cast< std::vector<int>(*)>(_a[1]))); break;
        case 44: _t->setMode((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 45: _t->updateHeadAngles((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 46: _t->updateWalkingParams((*reinterpret_cast< op3_walking_module_msgs::WalkingParam(*)>(_a[1]))); break;
        case 47: _t->updateZMPWalkingParams((*reinterpret_cast< zmp_walking_module_msgs::ZMPWalkingParam(*)>(_a[1]))); break;
        case 48: _t->updateCaptureStepParams((*reinterpret_cast< capture_step_module_msgs::WalkingParam(*)>(_a[1]))); break;
        case 49: _t->updateQuinticWalkParams((*reinterpret_cast< quintic_walk_msgs::WalkingParam(*)>(_a[1]))); break;
        case 50: _t->walkingCommandShortcut(); break;
        case 51: _t->setHeadAngle(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData robotis_op::MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject robotis_op::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_robotis_op__MainWindow,
      qt_meta_data_robotis_op__MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &robotis_op::MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *robotis_op::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *robotis_op::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_robotis_op__MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int robotis_op::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 52)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 52;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
