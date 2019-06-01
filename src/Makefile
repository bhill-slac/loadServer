TOP=..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
PROD_IOC += loadServer

DBD += loadServer.dbd

loadServer_DBD += softIoc.dbd
loadServer_DBD += PVAServerRegister.dbd
loadServer_DBD += qsrv.dbd

loadServer_SRCS += loadServerMain.cpp
loadServer_SRCS += loadServer_registerRecordDeviceDriver.cpp

loadServer_LIBS += qsrv
loadServer_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)
loadServer_LIBS += $(EPICS_BASE_IOC_LIBS)

PROD_IOC += loadIoc
DBD += loadIoc.dbd

loadIoc_DBD += softIoc.dbd
loadIoc_DBD += PVAServerRegister.dbd
loadIoc_DBD += qsrv.dbd

loadIoc_SRCS += loadIocMain.cpp
loadIoc_SRCS += loadIoc_registerRecordDeviceDriver.cpp

loadIoc_LIBS += qsrv
loadIoc_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)
loadIoc_LIBS += $(EPICS_BASE_IOC_LIBS)

DB_INSTALLS += $(EPICS_BASE)/db/softIocExit.db

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

