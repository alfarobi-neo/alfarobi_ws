/****************************************************************************
** Meta object code from reading C++ file 'node.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ALFAROBI-Localization/mcl_viewer/node.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#include <QtCore/QVector>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'node.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Node_t {
    QByteArrayData data[12];
    char stringdata0[175];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Node_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Node_t qt_meta_stringdata_Node = {
    {
QT_MOC_LITERAL(0, 0, 4), // "Node"
QT_MOC_LITERAL(1, 5, 11), // "rosShutdown"
QT_MOC_LITERAL(2, 17, 0), // ""
QT_MOC_LITERAL(3, 18, 16), // "updateParameters"
QT_MOC_LITERAL(4, 35, 36), // "mcl_localization::localizatio..."
QT_MOC_LITERAL(5, 72, 6), // "params"
QT_MOC_LITERAL(6, 79, 12), // "updateWhites"
QT_MOC_LITERAL(7, 92, 16), // "QVector<QPointF>"
QT_MOC_LITERAL(8, 109, 6), // "whites"
QT_MOC_LITERAL(9, 116, 13), // "updateMCLitem"
QT_MOC_LITERAL(10, 130, 40), // "mcl_localization::localizatio..."
QT_MOC_LITERAL(11, 171, 3) // "loc"

    },
    "Node\0rosShutdown\0\0updateParameters\0"
    "mcl_localization::localization_param\0"
    "params\0updateWhites\0QVector<QPointF>\0"
    "whites\0updateMCLitem\0"
    "mcl_localization::localization::ConstPtr\0"
    "loc"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Node[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x06 /* Public */,
       3,    1,   35,    2, 0x06 /* Public */,
       6,    1,   38,    2, 0x06 /* Public */,
       9,    1,   41,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 4,    5,
    QMetaType::Void, 0x80000000 | 7,    8,
    QMetaType::Void, 0x80000000 | 10,   11,

       0        // eod
};

void Node::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Node *_t = static_cast<Node *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->rosShutdown(); break;
        case 1: _t->updateParameters((*reinterpret_cast< mcl_localization::localization_param(*)>(_a[1]))); break;
        case 2: _t->updateWhites((*reinterpret_cast< QVector<QPointF>(*)>(_a[1]))); break;
        case 3: _t->updateMCLitem((*reinterpret_cast< const mcl_localization::localization::ConstPtr(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 2:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QVector<QPointF> >(); break;
            }
            break;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Node::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Node::rosShutdown)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Node::*_t)(mcl_localization::localization_param );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Node::updateParameters)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (Node::*_t)(QVector<QPointF> );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Node::updateWhites)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (Node::*_t)(const mcl_localization::localization::ConstPtr & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Node::updateMCLitem)) {
                *result = 3;
                return;
            }
        }
    }
}

const QMetaObject Node::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_Node.data,
      qt_meta_data_Node,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *Node::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Node::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Node.stringdata0))
        return static_cast<void*>(const_cast< Node*>(this));
    return QThread::qt_metacast(_clname);
}

int Node::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void Node::rosShutdown()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Node::updateParameters(mcl_localization::localization_param _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Node::updateWhites(QVector<QPointF> _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Node::updateMCLitem(const mcl_localization::localization::ConstPtr & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
