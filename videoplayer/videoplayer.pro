QT += quick multimedia

SOURCES += \
        AudioItem.cpp \
        CaptureVideo.cpp \
        Demuxed.cpp \
        VideoItem.cpp \
        VideoThread.cpp \
        main.cpp

resources.files = main.qml 
resources.prefix = /$${TARGET}
RESOURCES += resources

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


#import ffmpeg lib
INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include

win32: LIBS += -L$$PWD/../lib/ -lavcodec \
               -L$$PWD/../lib/ -lavdevice \
               -L$$PWD/../lib/ -lavfilter \
               -L$$PWD/../lib/ -lavformat \
               -L$$PWD/../lib/ -lavutil \
                -L$$PWD/../lib/ -lpostproc \
                 -L$$PWD/../lib/ -lswresample \
                  -L$$PWD/../lib/ -lswscale \

HEADERS += \
    AudioItem.h \
    CaptureVideo.h \
    Demuxed.h \
    VideoItem.h \
    VideoThread.h
