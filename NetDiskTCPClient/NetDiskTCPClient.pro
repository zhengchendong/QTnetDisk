QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

RC_ICONS = appicon.ico

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    filesystem.cpp \
    friend.cpp \
    main.cpp \
    onlineuserwid.cpp \
    operatewidget.cpp \
    privatechatwid.cpp \
    protocol.cpp \
    sharedfilefriendlist.cpp \
    tcpclient.cpp \
    uploadfileprogress.cpp \
    rsakey.cpp \
    aes.cpp \
    padding.cpp

HEADERS += \
    filesystem.h \
    friend.h \
    onlineuserwid.h \
    operatewidget.h \
    privatechatwid.h \
    protocol.h \
    sharedfilefriendlist.h \
    tcpclient.h \
    uploadfileprogress.h \
    rsakey.h \
    aes.h \
    padding.h

FORMS += \
    onlineuserwid.ui \
    privatechatwid.ui \
    tcpclient.ui \
    uploadfileprogress.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    config.qrc \
    icon.qrc

INCLUDEPATH += F:/OpenSSL-Win64/include
LIBS += F:/OpenSSL-Win64/lib/libeay32.lib F:/OpenSSL-Win64/lib/ssleay32.lib
