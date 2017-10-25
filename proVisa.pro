TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.c

include(deployment.pri)
qtcAddDeployment()


#win32: LIBS += -L/Program Files/IVI Foundation/VISA/Win64/Lib_x64/msc/ -lvisa64

#INCLUDEPATH += /Program Files/IVI Foundation/VISA/Win64/Include
#DEPENDPATH += /Program Files/IVI Foundation/VISA/Win64/Include

#win32:!win32-g++: PRE_TARGETDEPS += /Program Files/IVI Foundation/VISA/Win64/Lib_x64/msc/visa64.lib
#else:win32-g++: PRE_TARGETDEPS += /Program Files/IVI Foundation/VISA/Win64/Lib_x64/msc/libvisa64.a

win32:CONFIG(release, debug|release): LIBS += -L$$quote("C:/Program Files/IVI Foundation/VISA/Win64/Lib_x64/msc") -lvisa64
else:win32:CONFIG(debug, debug|release): LIBS += -L$$quote("C:/Program Files/IVI Foundation/VISA/Win64/Lib_x64/msc") -lvisa64

INCLUDEPATH += -L$$quote("C:/Program Files/IVI Foundation/VISA/Win64/include")
DEPENDPATH += -L$$quote("C:/Program Files/IVI Foundation/VISA/Win64/include")
#:kernel32.lib;user32.lib;gdi32.lib;winspool.lib;comdlg32.lib;advapi32.lib;shell32.lib;ole32.lib;oleaut32.lib;uuid.lib;odbc32.lib;odbccp32.lib;visa32.lib;%(AdditionalDependencies)
