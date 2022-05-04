/* -*- c++ -*- */

#define CUSTOMMODULE_API

%include "gnuradio.i"           // the common stuff

//load generated python docstrings
%include "customModule_swig_doc.i"

%{
#include "customModule/ofdm_sync_shunyu.h"
%}

%include "customModule/ofdm_sync_shunyu.h"
GR_SWIG_BLOCK_MAGIC2(customModule, ofdm_sync_shunyu);
