TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# Build an IOC support library
#

DBD += exampleRPC.dbd

#=============================
# build an ioc application

PROD_IOC += exampleRPC


# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
exampleRPC_SRCS += exampleRPC_registerRecordDeviceDriver.cpp
exampleRPC_SRCS_DEFAULT += exampleRPCMain.cpp
exampleRPC_SRCS_vxWorks += -nil-


# The following adds support from base/src/vxWorks
exampleRPC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

exampleRPC_LIBS += exampleRPC
exampleRPC_LIBS += pvDatabase qsrv pvAccessIOC pvAccess pvAccessCA nt pvData
exampleRPC_LIBS += $(EPICS_BASE_IOC_LIBS)

PROD_SYS_LIBS_WIN32 += ws2_32

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

