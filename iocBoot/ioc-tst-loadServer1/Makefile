# IOC instance Makefile
# Generates envPaths and expands the instance
# specific substitution files.

TOP = ../..
include $(TOP)/configure/CONFIG
ARCH = rhel7-x86_64
TARGETS = envPaths

# Make sure these archive files are fully expanded
USR_ARCHIVEFLAGS += -V

#----------------------------------------------------
# Create and install IOC archive file
#

#----------------------------------------------------
# Create and install IOC autosave file
#

include $(TOP)/configure/RULES.ioc
#-include $(TOP)/configure/RULES.ioc-targets
