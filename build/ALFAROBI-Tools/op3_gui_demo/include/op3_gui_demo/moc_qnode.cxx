/****************************************************************************
** Meta object code from reading C++ file 'qnode.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/ALFAROBI-Tools/op3_gui_demo/include/op3_gui_demo/qnode.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qnode.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_robotis_op__QNodeOP3[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // signals: signature, parameters, type, tag, flags
      22,   21,   21,   21, 0x05,
      39,   21,   21,   21, 0x05,
      58,   53,   21,   21, 0x05,
     115,  106,   21,   21, 0x05,
     154,  147,   21,   21, 0x05,
     217,  147,   21,   21, 0x05,
     286,  147,   21,   21, 0x05,
     345,  147,   21,   21, 0x05,
     420,  147,   21,   21, 0x05,
     481,  147,   21,   21, 0x05,

 // slots: signature, parameters, type, tag, flags
     536,   21,   21,   21, 0x0a,
     571,  558,   21,   21, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_robotis_op__QNodeOP3[] = {
    "robotis_op::QNodeOP3\0\0loggingUpdated()\0"
    "rosShutdown()\0mode\0"
    "updateCurrentJointControlMode(std::vector<int>)\0"
    "pan,tilt\0updateHeadAngles(double,double)\0"
    "params\0"
    "updateWalkingParameters(op3_walking_module_msgs::WalkingParam)\0"
    "updateZMPWalkingParameters(zmp_walking_module_msgs::ZMPWalkingParam)\0"
    "updateKickingParameters(kicking_module_msgs::KickingParam)\0"
    "updateCaptureStepWalkingParameters(capture_step_module_msgs::WalkingPa"
    "ram)\0"
    "updateQuinticWalkParameters(quintic_walk_msgs::WalkingParam)\0"
    "updateFeedbackParameters(feedback_msgs::FeedbackParam)\0"
    "getJointControlMode()\0motion_index\0"
    "playMotion(int)\0"
};

void robotis_op::QNodeOP3::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        QNodeOP3 *_t = static_cast<QNodeOP3 *>(_o);
        switch (_id) {
        case 0: _t->loggingUpdated(); break;
        case 1: _t->rosShutdown(); break;
        case 2: _t->updateCurrentJointControlMode((*reinterpret_cast< std::vector<int>(*)>(_a[1]))); break;
        case 3: _t->updateHeadAngles((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 4: _t->updateWalkingParameters((*reinterpret_cast< op3_walking_module_msgs::WalkingParam(*)>(_a[1]))); break;
        case 5: _t->updateZMPWalkingParameters((*reinterpret_cast< zmp_walking_module_msgs::ZMPWalkingParam(*)>(_a[1]))); break;
        case 6: _t->updateKickingParameters((*reinterpret_cast< kicking_module_msgs::KickingParam(*)>(_a[1]))); break;
        case 7: _t->updateCaptureStepWalkingParameters((*reinterpret_cast< capture_step_module_msgs::WalkingParam(*)>(_a[1]))); break;
        case 8: _t->updateQuinticWalkParameters((*reinterpret_cast< quintic_walk_msgs::WalkingParam(*)>(_a[1]))); break;
        case 9: _t->updateFeedbackParameters((*reinterpret_cast< feedback_msgs::FeedbackParam(*)>(_a[1]))); break;
        case 10: _t->getJointControlMode(); break;
        case 11: _t->playMotion((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData robotis_op::QNodeOP3::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject robotis_op::QNodeOP3::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_robotis_op__QNodeOP3,
      qt_meta_data_robotis_op__QNodeOP3, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &robotis_op::QNodeOP3::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *robotis_op::QNodeOP3::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *robotis_op::QNodeOP3::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_robotis_op__QNodeOP3))
        return static_cast<void*>(const_cast< QNodeOP3*>(this));
    return QThread::qt_metacast(_clname);
}

int robotis_op::QNodeOP3::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void robotis_op::QNodeOP3::loggingUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void robotis_op::QNodeOP3::rosShutdown()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void robotis_op::QNodeOP3::updateCurrentJointControlMode(std::vector<int> _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void robotis_op::QNodeOP3::updateHeadAngles(double _t1, double _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void robotis_op::QNodeOP3::updateWalkingParameters(op3_walking_module_msgs::WalkingParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void robotis_op::QNodeOP3::updateZMPWalkingParameters(zmp_walking_module_msgs::ZMPWalkingParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void robotis_op::QNodeOP3::updateKickingParameters(kicking_module_msgs::KickingParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void robotis_op::QNodeOP3::updateCaptureStepWalkingParameters(capture_step_module_msgs::WalkingParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void robotis_op::QNodeOP3::updateQuinticWalkParameters(quintic_walk_msgs::WalkingParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void robotis_op::QNodeOP3::updateFeedbackParameters(feedback_msgs::FeedbackParam _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}
QT_END_MOC_NAMESPACE
