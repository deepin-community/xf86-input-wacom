#  Copyright 2009 Red Hat, Inc.
#
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  on the rights to use, copy, modify, merge, publish, distribute, sub
#  license, and/or sell copies of the Software, and to permit persons to whom
#  the Software is furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice (including the next
#  paragraph) shall be included in all copies or substantial portions of the
#  Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.  IN NO EVENT SHALL
#  ADAM JACKSON BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
#  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
#  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

bin_PROGRAMS = xsetwacom isdv4-serial-debugger isdv4-serial-inputattach

shared_sources = tools-shared.h tools-shared.c

isdv4_serial_debugger_SOURCES = isdv4-serial-debugger.c $(shared_sources)
isdv4_serial_debugger_CFLAGS = $(AM_CFLAGS) -I$(top_srcdir)/include

isdv4_serial_inputattach_SOURCES = isdv4-serial-inputattach.c $(shared_sources)
isdv4_serial_inputattach_CFLAGS = $(AM_CFLAGS) $(UDEV_CFLAGS) -I$(top_srcdir)/include
isdv4_serial_inputattach_LDADD = $(UDEV_LIBS)

xsetwacom_SOURCES = xsetwacom.c
xsetwacom_CFLAGS = $(AM_CFLAGS) $(X11_CFLAGS) -I$(top_srcdir)/include
xsetwacom_LDADD = $(X11_LIBS)

if FUZZINTERFACE
xsetwacom_CFLAGS += -DBUILD_FUZZINTERFACE
endif

if UNITTESTS
check_PROGRAMS = xsetwacom-test
xsetwacom_test_SOURCES=xsetwacom.c $(top_srcdir)/test/wacom-test-suite.c $(top_srcdir)/test/wacom-test-suite.h
xsetwacom_test_CFLAGS=$(AM_CFLAGS) $(X11_CFLAGS) -I$(top_srcdir)/include -DENABLE_TESTS -I$(top_srcdir)/test -Wno-unused-function
xsetwacom_test_LDADD = $(X11_LIBS)

TESTS=$(check_PROGRAMS)
endif

EXTRA_DIST = wacom-record.c
