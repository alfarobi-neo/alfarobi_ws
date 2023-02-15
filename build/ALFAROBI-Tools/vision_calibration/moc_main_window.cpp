/****************************************************************************
** Meta object code from reading C++ file 'main_window.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ALFAROBI-Tools/vision_calibration/main_window.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_MainWindow_t {
    QByteArrayData data[24];
    char stringdata0[364];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MainWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10), // "MainWindow"
QT_MOC_LITERAL(1, 11, 7), // "setFile"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 4), // "path"
QT_MOC_LITERAL(4, 25, 11), // "updateImage"
QT_MOC_LITERAL(5, 37, 6), // "status"
QT_MOC_LITERAL(6, 44, 7), // "loadLUT"
QT_MOC_LITERAL(7, 52, 7), // "saveLUT"
QT_MOC_LITERAL(8, 60, 9), // "updateLUT"
QT_MOC_LITERAL(9, 70, 21), // "on_browse_btn_clicked"
QT_MOC_LITERAL(10, 92, 20), // "on_load_file_clicked"
QT_MOC_LITERAL(11, 113, 27), // "on_update_image_btn_clicked"
QT_MOC_LITERAL(12, 141, 25), // "on_lut_browse_btn_clicked"
QT_MOC_LITERAL(13, 167, 23), // "on_load_lut_btn_clicked"
QT_MOC_LITERAL(14, 191, 23), // "on_save_lut_btn_clicked"
QT_MOC_LITERAL(15, 215, 25), // "on_lut_item_box_activated"
QT_MOC_LITERAL(16, 241, 22), // "on_add_lut_btn_toggled"
QT_MOC_LITERAL(17, 264, 22), // "on_rem_lut_btn_toggled"
QT_MOC_LITERAL(18, 287, 29), // "on_lutview_check_stateChanged"
QT_MOC_LITERAL(19, 317, 5), // "state"
QT_MOC_LITERAL(20, 323, 8), // "setImage"
QT_MOC_LITERAL(21, 332, 7), // "QImage&"
QT_MOC_LITERAL(22, 340, 5), // "image"
QT_MOC_LITERAL(23, 346, 17) // "updateLoggingView"

    },
    "MainWindow\0setFile\0\0path\0updateImage\0"
    "status\0loadLUT\0saveLUT\0updateLUT\0"
    "on_browse_btn_clicked\0on_load_file_clicked\0"
    "on_update_image_btn_clicked\0"
    "on_lut_browse_btn_clicked\0"
    "on_load_lut_btn_clicked\0on_save_lut_btn_clicked\0"
    "on_lut_item_box_activated\0"
    "on_add_lut_btn_toggled\0on_rem_lut_btn_toggled\0"
    "on_lutview_check_stateChanged\0state\0"
    "setImage\0QImage&\0image\0updateLoggingView"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      17,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   99,    2, 0x06 /* Public */,
       4,    1,  102,    2, 0x06 /* Public */,
       6,    1,  105,    2, 0x06 /* Public */,
       7,    1,  108,    2, 0x06 /* Public */,
       8,    0,  111,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       9,    0,  112,    2, 0x0a /* Public */,
      10,    0,  113,    2, 0x0a /* Public */,
      11,    0,  114,    2, 0x0a /* Public */,
      12,    0,  115,    2, 0x0a /* Public */,
      13,    0,  116,    2, 0x0a /* Public */,
      14,    0,  117,    2, 0x0a /* Public */,
      15,    1,  118,    2, 0x0a /* Public */,
      16,    0,  121,    2, 0x0a /* Public */,
      17,    0,  122,    2, 0x0a /* Public */,
      18,    1,  123,    2, 0x0a /* Public */,
      20,    1,  126,    2, 0x0a /* Public */,
      23,    0,  129,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Bool,    5,
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Bool,    5,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   19,
    QMetaType::Void, 0x80000000 | 21,   22,
    QMetaType::Void,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->updateImage((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->loadLUT((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->saveLUT((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->updateLUT(); break;
        case 5: _t->on_browse_btn_clicked(); break;
        case 6: _t->on_load_file_clicked(); break;
        case 7: _t->on_update_image_btn_clicked(); break;
        case 8: _t->on_lut_browse_btn_clicked(); break;
        case 9: _t->on_load_lut_btn_clicked(); break;
        case 10: _t->on_save_lut_btn_clicked(); break;
        case 11: _t->on_lut_item_box_activated((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 12: _t->on_add_lut_btn_toggled(); break;
        case 13: _t->on_rem_lut_btn_toggled(); break;
        case 14: _t->on_lutview_check_stateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: _t->setImage((*reinterpret_cast< QImage(*)>(_a[1]))); break;
        case 16: _t->updateLoggingView(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MainWindow::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::setFile)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::updateImage)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::loadLUT)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::saveLUT)) {
                *result = 3;
                return;
            }
        }
        {
            typedef void (MainWindow::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MainWindow::updateLUT)) {
                *result = 4;
                return;
            }
        }
    }
}

const QMetaObject MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_MainWindow.data,
      qt_meta_data_MainWindow,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow.stringdata0))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 17)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 17;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 17)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 17;
    }
    return _id;
}

// SIGNAL 0
void MainWindow::setFile(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void MainWindow::updateImage(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void MainWindow::loadLUT(QString _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void MainWindow::saveLUT(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void MainWindow::updateLUT()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
