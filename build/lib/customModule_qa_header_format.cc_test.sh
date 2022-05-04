#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/gnu/gr-customModule/lib"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/gnu/gr-customModule/build/lib":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=$PYTHONPATH
customModule_qa_header_format.cc 
