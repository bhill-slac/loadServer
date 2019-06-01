#!../../bin/rhel7-x86_64/loadIoc

< envPaths
epicsEnvSet( "ENGINEER", "Bruce Hill (bhill)" )
epicsEnvSet( "IOCSH_PS1", "$(IOC)> " )
epicsEnvSet( "P", "TST:LDSRV:1:" )

cd( "../.." )

## Register all support components
dbLoadDatabase( "dbd/loadIoc.dbd", 0, 0 )
loadIoc_registerRecordDeviceDriver( pdbbase )

on error wait 3.1

# Load record instances
dbLoadRecords( "db/drive_10Counters.db",		"P=$(P),DELAY=0.01" )

# Initialize the IOC and start processing records
iocInit()

# All IOCs should dump some common info after initial startup.
#< /reg/d/iocCommon/All/post_linux.cmd

