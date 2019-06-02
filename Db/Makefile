TOP=..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this

# Drive templates
DB += ca_drive.template
DB += drive.template
DB += trig.template

# Counters and circular buffers
DB += CircBuff.template
DB += Count.template

DB += drive_4CircBuff.db
DB += drive_10CircBuff.db
DB += drive_100CircBuff.db
DB += drive_10Counters.db
DB += drive_100Counters.db

DB += ca_drive_4CircBuff.db
DB += ca_drive_10CircBuff.db
DB += ca_drive_100CircBuff.db
DB += ca_drive_10Counters.db
DB += ca_drive_100Counters.db

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

