TOP=..

include $(TOP)/configure/CONFIG

helloPutGetSRC = $(TOP)/src

INC += pv/helloPutGetRecord.h

DBD += helloPutGetRegister.dbd

LIBRARY = helloPutGet
LIBSRCS += helloPutGetRecord.cpp
LIBSRCS += helloPutGetRegister.cpp
helloPutGet_LIBS += pvDatabase pvAccess nt pvData Com

# shared library ABI version.
SHRLIB_VERSION ?= 4.3.0

PROD_HOST += helloPutGetMain
helloPutGetMain_SRCS += helloPutGetMain.cpp
helloPutGetMain_LIBS += helloPutGet
helloPutGetMain_LIBS += pvDatabase pvAccess pvData Com

PROD_HOST += helloPutGetClient
helloPutGetClient_SRCS += helloPutGetClient.cpp
helloPutGetClient_LIBS += pvaClient
helloPutGetClient_LIBS += pvAccess pvAccessCA pvData ca Com

PROD_HOST += helloNoWaitPutGetClient
helloNoWaitPutGetClient_SRCS += helloNoWaitPutGetClient.cpp
helloNoWaitPutGetClient_LIBS += pvaClient
helloNoWaitPutGetClient_LIBS += pvAccess pvAccessCA pvData ca Com


PROD_SYS_LIBS_WIN32 += ws2_32


include $(TOP)/configure/RULES


