/****************************************************************************
** Meta object code from reading C++ file 'arduinocontroller.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ALFAROBI-Tools/arduino_calibrator/arduinocontroller.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'arduinocontroller.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ArduController_t {
    QByteArrayData data[14];
    char stringdata0[100];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ArduController_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ArduController_t qt_meta_stringdata_ArduController = {
    {
QT_MOC_LITERAL(0, 0, 14), // "ArduController"
QT_MOC_LITERAL(1, 15, 7), // "sendRPY"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 4), // "roll"
QT_MOC_LITERAL(4, 29, 5), // "pitch"
QT_MOC_LITERAL(5, 35, 3), // "yaw"
QT_MOC_LITERAL(6, 39, 8), // "sendGyro"
QT_MOC_LITERAL(7, 48, 1), // "x"
QT_MOC_LITERAL(8, 50, 1), // "y"
QT_MOC_LITERAL(9, 52, 1), // "z"
QT_MOC_LITERAL(10, 54, 10), // "sendButton"
QT_MOC_LITERAL(11, 65, 13), // "displayOffset"
QT_MOC_LITERAL(12, 79, 10), // "readSerial"
QT_MOC_LITERAL(13, 90, 9) // "setOffset"

    },
    "ArduController\0sendRPY\0\0roll\0pitch\0"
    "yaw\0sendGyro\0x\0y\0z\0sendButton\0"
    "displayOffset\0readSerial\0setOffset"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ArduController[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    3,   44,    2, 0x06 /* Public */,
       6,    3,   51,    2, 0x06 /* Public */,
      10,    1,   58,    2, 0x06 /* Public */,
      11,    1,   61,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      12,    0,   64,    2, 0x0a /* Public */,
      13,    0,   65,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double,    3,    4,    5,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double,    7,    8,    9,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::Double,    7,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void ArduController::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ArduController *_t = static_cast<ArduController *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->sendRPY((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        case 1: _t->sendGyro((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        case 2: _t->sendButton((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->displayOffset((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->readSerial(); break;
        case 5: _t->setOffset(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (ArduController::*_t)(double , double , double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ArduController::sendRPY)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (ArduController::*_t)(double , double , double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ArduController::sendGyro)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (ArduController::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ArduController::sendButton)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (ArduController::*_t)(double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ArduController::displayOffset)) {
                *result = 3;
                return;
            }
        }
    }
}

const QMetaObject ArduController::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_ArduController.data,
      qt_meta_data_ArduController,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ArduController::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ArduController::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ArduController.stringdata0))
        return static_cast<void*>(const_cast< ArduController*>(this));
    return QObject::qt_metacast(_clname);
}

int ArduController::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void ArduController::sendRPY(double _t1, double _t2, double _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ArduController::sendGyro(double _t1, double _t2, double _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ArduController::sendButton(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void ArduController::displayOffset(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
