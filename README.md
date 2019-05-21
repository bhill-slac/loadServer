EPICS loadServer IOC
=========================================

Simple EPICS softIOC which includes some EPICS database files
which make it easy to deploy sets of counting and/or circular buffer
PVs which update synchronously and share the same timestamp.

IOC is built as `bin/$T_A/loadServer`.

Two basic record variants are provided:
	$(P):Count$(N)		Counts from 0 to (2**53)-1, then repeats
	$(P):CircCuff$(N)	Rotating circular buffer of NELM elements fed by $(P):Count($N)

These are built up via substitution files into synchronous sets of counters and circular buffers.
*	[db/10CircBuff.db](db/10CircBuff.db)
*	[db/10Counters.db](db/10Counters.db)
*	[db/100CircBuff.db](db/100CircBuff.db)
*	[db/100Counters.db](db/100Counters.db)

Synchrous drive PV $(P):drive is a calcout record used to
drive the counter update rate and provide the timestamp.
Three variants are provided:

*	[Db/trig.db](Db/trig.db)  Driven off timing event code, EVNT.
*	[Db/drive.db](Db/drive.db) Async updates w/ configurable delay, DELAY.
*	[Db/ca_drive.db](Db/ca_drive.db) Driven off a channel access link, CA_LNK.

See the pyProcMgr project for a python based test framework that deploys loadServer IOCs.
/afs/slac.stanford.edu/g/cd/swe/git/repos/slac/pythontools/pyProcMgr.git

Requires
--------

* [epics-base](https://github.com/epics-base/epics-base) R7.0.0 or greater

Testing
-------

Run two sample IOC's:
[iocBoot/ioctest/tx1.cmd](iocBoot/ioctest/tx1.cmd)
[iocBoot/ioctest/tx2.cmd](iocBoot/ioctest/tx2.cmd).


