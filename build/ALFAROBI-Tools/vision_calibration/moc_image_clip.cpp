/****************************************************************************
** Meta object code from reading C++ file 'image_clip.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ALFAROBI-Tools/vision_calibration/image_clip.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'image_clip.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_ImageClip_t {
    QByteArrayData data[15];
    char stringdata0[160];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ImageClip_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ImageClip_t qt_meta_stringdata_ImageClip = {
    {
QT_MOC_LITERAL(0, 0, 9), // "ImageClip"
QT_MOC_LITERAL(1, 10, 23), // "previousPositionChanged"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 16), // "previousPosition"
QT_MOC_LITERAL(4, 52, 9), // "sendImage"
QT_MOC_LITERAL(5, 62, 7), // "QImage&"
QT_MOC_LITERAL(6, 70, 5), // "image"
QT_MOC_LITERAL(7, 76, 14), // "loggingUpdated"
QT_MOC_LITERAL(8, 91, 19), // "setPreviousPosition"
QT_MOC_LITERAL(9, 111, 8), // "loadFile"
QT_MOC_LITERAL(10, 120, 4), // "path"
QT_MOC_LITERAL(11, 125, 11), // "updateImage"
QT_MOC_LITERAL(12, 137, 6), // "status"
QT_MOC_LITERAL(13, 144, 7), // "loadLUT"
QT_MOC_LITERAL(14, 152, 7) // "saveLUT"

    },
    "ImageClip\0previousPositionChanged\0\0"
    "previousPosition\0sendImage\0QImage&\0"
    "image\0loggingUpdated\0setPreviousPosition\0"
    "loadFile\0path\0updateImage\0status\0"
    "loadLUT\0saveLUT"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ImageClip[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       1,   82, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   59,    2, 0x06 /* Public */,
       4,    1,   62,    2, 0x06 /* Public */,
       7,    0,   65,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       8,    1,   66,    2, 0x0a /* Public */,
       9,    1,   69,    2, 0x0a /* Public */,
      11,    1,   72,    2, 0x0a /* Public */,
      13,    1,   75,    2, 0x0a /* Public */,
      14,    1,   78,    2, 0x0a /* Public */,
      11,    0,   81,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QPointF,    3,
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::QPointF,    3,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void, QMetaType::Bool,   12,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void, QMetaType::Bool,   12,
    QMetaType::Void,

 // properties: name, type, flags
       3, QMetaType::QPointF, 0x00495103,

 // properties: notify_signal_id
       0,

       0        // eod
};

void ImageClip::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ImageClip *_t = static_cast<ImageClip *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->previousPositionChanged((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 1: _t->sendImage((*reinterpret_cast< QImage(*)>(_a[1]))); break;
        case 2: _t->loggingUpdated(); break;
        case 3: _t->setPreviousPosition((*reinterpret_cast< const QPointF(*)>(_a[1]))); break;
        case 4: _t->loadFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 5: _t->updateImage((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->loadLUT((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 7: _t->saveLUT((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->updateImage(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (ImageClip::*_t)(const QPointF );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ImageClip::previousPositionChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (ImageClip::*_t)(QImage & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ImageClip::sendImage)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (ImageClip::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ImageClip::loggingUpdated)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        ImageClip *_t = static_cast<ImageClip *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QPointF*>(_v) = _t->previousPosition(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        ImageClip *_t = static_cast<ImageClip *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setPreviousPosition(*reinterpret_cast< QPointF*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

const QMetaObject ImageClip::staticMetaObject = {
    { &QGraphicsScene::staticMetaObject, qt_meta_stringdata_ImageClip.data,
      qt_meta_data_ImageClip,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *ImageClip::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ImageClip::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ImageClip.stringdata0))
        return static_cast<void*>(const_cast< ImageClip*>(this));
    return QGraphicsScene::qt_metacast(_clname);
}

int ImageClip::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGraphicsScene::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 9;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void ImageClip::previousPositionChanged(const QPointF _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ImageClip::sendImage(QImage & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ImageClip::loggingUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
