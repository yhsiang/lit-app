TEMPLATE = app
TARGET = Lit
QT += qml quick

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    LitNativeHandler.cpp

HEADERS += \
    LitNativeHandler.h

RESOURCES += \
    main.qrc

OTHER_FILES += qml/*.qml

mac {
    QMAKE_INFO_PLIST = platform/mac/Info.plist
    ICON = platform/mac/icon.icns
    QMAKE_MAC_SDK = macosx10.9

    CONFIG(build_release) {
        QMAKE_POST_LINK += macdeployqt Lit.app -qmldir=qml/ -verbose=1 -dmg;
    }
}
