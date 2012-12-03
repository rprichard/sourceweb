QT += core
QT -= gui

CONFIG += link_prl

TARGET = sw-clang-indexer
TEMPLATE = app

SOURCES += \
    ASTIndexer.cc \
    DaemonPool.cc \
    IndexBuilder.cc \
    IndexerContext.cc \
    IndexerPPCallbacks.cc \
    Mutex.cc \
    NameGenerator.cc \
    Process.cc \
    TUIndexer.cc \
    Util.cc \
    main.cc

HEADERS += \
    ASTIndexer.h \
    DaemonPool.h \
    IndexBuilder.h \
    IndexerContext.h \
    IndexerPPCallbacks.h \
    Location.h \
    Mutex.h \
    NameGenerator.h \
    Process.h \
    Switcher.h \
    TUIndexer.h \
    Util.h

DEFINES += JSON_IS_AMALGAMATION
DEPENDENCY_STATIC_LIBS = \
    ../libindexdb \
    ../third_party/libjsoncpp
include(../dependency_static_libs.pri)

target.path = /
INSTALLS += target

QMAKE_CXXFLAGS += -std=c++0x
QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter

include(../clang.pri)
