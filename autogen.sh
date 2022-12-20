#! /bin/sh

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

ORIGDIR=`pwd`
cd $srcdir

autoreconf -v --install --force || exit 1
rm -rf autom4te.cache m4
cd $ORIGDIR || exit $?

#$srcdir/configure "$@"
