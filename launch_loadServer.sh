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

cd $TOP
$PYPROCMGR -c 10 $LOADSERVER \
	'-m DELAY=0.007,P=PVA:GW:TEST:$PYPROC_ID:,NELM=10 -d db/drive_100Counters.db'


#	'-m DELAY=0.017,P=PVA:GW:TEST:$PYPROC_ID:,NELM=10'	\
#$LOADSERVER	\
#	-m DELAY=1.0,P=PVA:GW:TEST:1:,NELM=10	\
#	-d $TOP/db/drive_10Counters.db


