%module wrapper

%{
#include <lmdb.h>
%}

%insert("lisphead") %{
(in-package :lmdb.low)
#+x86-64
  (cffi:defctype size-t  :uint64)
#-x86-64
  (cffi:defctype size-t  :uint32)
%}
%feature("intern_function", "swig-lispify");

%include "/usr/include/lmdb.h"
