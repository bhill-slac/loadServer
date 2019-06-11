#!/bin/bash

PROCSERV=`which procServ`
if [ ! -e "$PROCSERV" ]; then
	echo "Error: procServ not found!"
	exit 1
fi

LOADSERVER=bin/$EPICS_HOST_ARCH/loadServer
if [ ! -e "$LOADSERVER" ]; then
	echo "Error: loadServer not found!"
	exit 1
fi

PYPROCMGR=`which pyProcMgr.py`
if [ ! -e "$PYPROCMGR" ]; then
	echo "Error: pyProcMgr.py not found!"
	exit 1
fi
echo PYPROCMGR = $PYPROCMGR

TOP=`readlink -f $(dirname ${BASH_SOURCE[0]})`
echo TOP = $TOP

echo "loadServers being launched w/o console log files."
echo "There's another version of this script in stressTestClients.git that logs to test dir hierarchy."

export TEST_CA_LNK

echo "Launching 4 loadServers for drive_4CircBuff, prefix: PVA:GW:TEST:"
cd $TOP
$PYPROCMGR -v -c 4 $LOADSERVER \
	'-m DELAY=0.01,P=PVA:GW:TEST:$PYPROC_ID:,NELM=20 -d db/drive_4CircBuff.db'

#	'-m NELM=20,CA_LNK=$TEST_CA_LNK -d db/ca_drive_4CircBuff.db'
