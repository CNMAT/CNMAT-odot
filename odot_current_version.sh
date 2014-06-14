#!/bin/bash
echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > include/odot_current_version.h
echo "#define ODOT_COMPILE_DATE \""`date`"\"" >> include/odot_current_version.h
