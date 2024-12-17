package main

/*
#cgo CFLAGS: -I./include
#cgo LDFLAGS: -L./.build/debug/ -lgo2swift -Wl,-rpath,.build/debug/
#include <stdlib.h>
#include "include/go2swift.h"
*/
import "C"
import "unsafe"

func computeHello(s string) string {
	cstr := C.CString(s)
	defer C.free(unsafe.Pointer(cstr))
	cResult := C.computeHello(cstr)
	defer C.free(unsafe.Pointer(cResult))
	return C.GoString(cResult)
}
