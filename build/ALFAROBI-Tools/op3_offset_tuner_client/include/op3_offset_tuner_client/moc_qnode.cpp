/****************************************************************************
** Meta object code from reading C++ file 'qnode.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/ALFAROBI-Tools/op3_offset_tuner_client/include/op3_offset_tuner_client/qnode.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qnode.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_op3_offset_tuner_client__QNode_t {
    QByteArrayData data[9];
    char stringdata0[184];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_op3_offset_tuner_client__QNode_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_op3_offset_tuner_client__QNode_t qt_meta_stringdata_op3_offset_tuner_client__QNode = {
    {
QT_MOC_LITERAL(0, 0, 30), // "op3_offset_tuner_client::QNode"
QT_MOC_LITERAL(1, 31, 14), // "loggingUpdated"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 11), // "rosShutdown"
QT_MOC_LITERAL(4, 59, 28), // "updatePresentJointOffsetData"
QT_MOC_LITERAL(5, 88, 46), // "op3_offset_tuner_msgs::JointO..."
QT_MOC_LITERAL(6, 135, 3), // "msg"
QT_MOC_LITERAL(7, 139, 25), // "getPresentJointOffsetData"
QT_MOC_LITERAL(8, 165, 18) // "recalculate_offset"

    },
    "op3_offset_tuner_client::QNode\0"
    "loggingUpdated\0\0rosShutdown\0"
    "updatePresentJointOffsetData\0"
    "op3_offset_tuner_msgs::JointOffsetPositionData\0"
    "msg\0getPresentJointOffsetData\0"
    "recalculate_offset"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_op3_offset_tuner_client__QNode[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   39,    2, 0x06 /* Public */,
       3,    0,   40,    2, 0x06 /* Public */,
       4,    1,   41,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   44,    2, 0x0a /* Public */,
       7,    0,   47,    2, 0x2a /* Public | MethodCloned */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 5,    6,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    8,
    QMetaType::Void,

       0        // eod
};

void op3_offset_tuner_client::QNode::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QNode *_t = static_cast<QNode *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->loggingUpdated(); break;
        case 1: _t->rosShutdown(); break;
        case 2: _t->updatePresentJointOffsetData((*reinterpret_cast< op3_offset_tuner_msgs::JointOffsetPositionData(*)>(_a[1]))); break;
        case 3: _t->getPresentJointOffsetData((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->getPresentJointOffsetData(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QNode::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QNode::loggingUpdated)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (QNode::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QNode::rosShutdown)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (QNode::*_t)(op3_offset_tuner_msgs::JointOffsetPositionData );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QNode::updatePresentJointOffsetData)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject op3_offset_tuner_client::QNode::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_op3_offset_tuner_client__QNode.data,
      qt_meta_data_op3_offset_tuner_client__QNode,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *op3_offset_tuner_client::QNode::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *op3_offset_tuner_client::QNode::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_op3_offset_tuner_client__QNode.stringdata0))
        return static_cast<void*>(const_cast< QNode*>(this));
    return QThread::qt_metacast(_clname);
}

int op3_offset_tuner_client::QNode::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void op3_offset_tuner_client::QNode::loggingUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void op3_offset_tuner_client::QNode::rosShutdown()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void op3_offset_tuner_client::QNode::updatePresentJointOffsetData(op3_offset_tuner_msgs::JointOffsetPositionData _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
