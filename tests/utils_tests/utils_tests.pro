QT += testlib
QT -= gui

CONFIG += c++14 qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += \ 
    main.cpp \
    FlashingServiceTest.cpp \
    CRCServiceTest.cpp \
    PollTest.cpp


HEADERS += \
    FlashingServiceTest.h \
    CRCServiceTest.h \
    PollTest.h

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../../utils/release/ -lutils
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../../utils/debug/ -lutils
else:unix: LIBS += -L$$OUT_PWD/../../utils/ -lutils

INCLUDEPATH += $$PWD/../../utils
DEPENDPATH += $$PWD/../../utils

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../utils/release/libutils.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../utils/debug/libutils.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../utils/release/utils.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../../utils/debug/utils.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../../utils/libutils.a
