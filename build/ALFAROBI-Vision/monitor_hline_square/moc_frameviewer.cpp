/****************************************************************************
** Meta object code from reading C++ file 'frameviewer.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ALFAROBI-Vision/monitor_hline_square/include/monitor_hline_square/frameviewer.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'frameviewer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_FrameViewer_t {
    QByteArrayData data[10];
    char stringdata0[100];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_FrameViewer_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_FrameViewer_t qt_meta_stringdata_FrameViewer = {
    {
QT_MOC_LITERAL(0, 0, 11), // "FrameViewer"
QT_MOC_LITERAL(1, 12, 6), // "getROI"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 4), // "_img"
QT_MOC_LITERAL(4, 25, 10), // "colorClass"
QT_MOC_LITERAL(5, 36, 3), // "idx"
QT_MOC_LITERAL(6, 40, 13), // "ballReference"
QT_MOC_LITERAL(7, 54, 11), // "updateFrame"
QT_MOC_LITERAL(8, 66, 16), // "colorClassAccept"
QT_MOC_LITERAL(9, 83, 16) // "colorClassReject"

    },
    "FrameViewer\0getROI\0\0_img\0colorClass\0"
    "idx\0ballReference\0updateFrame\0"
    "colorClassAccept\0colorClassReject"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FrameViewer[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x06 /* Public */,
       4,    1,   47,    2, 0x06 /* Public */,
       6,    1,   50,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   53,    2, 0x08 /* Private */,
       8,    0,   56,    2, 0x08 /* Private */,
       9,    0,   57,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::QImage,    3,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::QImage,    3,

 // slots: parameters
    QMetaType::Void, QMetaType::QImage,    3,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void FrameViewer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        FrameViewer *_t = static_cast<FrameViewer *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->getROI((*reinterpret_cast< const QImage(*)>(_a[1]))); break;
        case 1: _t->colorClass((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->ballReference((*reinterpret_cast< const QImage(*)>(_a[1]))); break;
        case 3: _t->updateFrame((*reinterpret_cast< QImage(*)>(_a[1]))); break;
        case 4: _t->colorClassAccept(); break;
        case 5: _t->colorClassReject(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (FrameViewer::*_t)(const QImage & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&FrameViewer::getROI)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (FrameViewer::*_t)(int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&FrameViewer::colorClass)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (FrameViewer::*_t)(const QImage & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&FrameViewer::ballReference)) {
                *result = 2;
                return;
            }
        }
    }
}

const QMetaObject FrameViewer::staticMetaObject = {
    { &QGraphicsView::staticMetaObject, qt_meta_stringdata_FrameViewer.data,
      qt_meta_data_FrameViewer,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *FrameViewer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FrameViewer::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_FrameViewer.stringdata0))
        return static_cast<void*>(const_cast< FrameViewer*>(this));
    return QGraphicsView::qt_metacast(_clname);
}

int FrameViewer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGraphicsView::qt_metacall(_c, _id, _a);
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
void FrameViewer::getROI(const QImage & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void FrameViewer::colorClass(int _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void FrameViewer::ballReference(const QImage & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
