< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("dbd/helloPutGet.dbd")
helloPutGet_registerRecordDeviceDriver(pdbbase)

## Load record instances
dbLoadRecords("db/ai.db","name=helloPutGetAI");

cd ${TOP}/iocBoot/${IOC}
iocInit()
helloPutGetCreateRecord helloPutGet

