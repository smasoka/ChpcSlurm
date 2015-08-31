#!/bin/bash
# Scripts for configuring qos policies
# These are mock up numbers since we still testing

# QOS for workq
sacctmgr -i add qos work set MaxCpusPerUser=2
sacctmgr -i modify qos work set MaxWallDurationPerJob=14-00

# QOS for accelrys
sacctmgr -i add qos accelrys set MaxCpusPerUser=5
sacctmgr -i modify qos accelrys set MaxWallDurationPerJob=14-00

# QOS for priorityq
sacctmgr -i add qos priority set priority=100
sacctmgr -i modify qos priority set MaxCpusPerUser=2
sacctmgr -i modify qos priority set MaxWallDurationPerJob=14-00

# QOS for specialq
sacctmgr -i add qos special set MaxCpusPerUser=4
sacctmgr -i modify qos special set MaxWallDurationPerJob=14-00

# QOS for keplaq
sacctmgr -i add qos kepla set MaxWallDurationPerJob=14-00

# QOS for intel_micq
sacctmgr -i add qos intel_mic set MaxWallDurationPerJob=14-00

# QOS for wallq
sacctmgr -i add qos wall set MaxCpusPerUser=4
sacctmgr -i modify qos wall set MaxWallDurationPerJob=21-00

###########################
# Link Partitions to QOS  #
###########################

scontrol update partition=workq AllowQos=work
scontrol update partition=accelrys AllowQos=accelrys
scontrol update partition=priorityqq AllowQos=priority
scontrol update partition=specialq AllowQos=special
scontrol update partition=keplaq AllowQos=kepla
scontrol update partition=intel_micq AllowQos=intel_mic
scontrol update partition=wallq AllowQos=wall
