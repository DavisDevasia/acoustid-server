#!/bin/sh

DIR=`dirname $0`/..
test -d $DIR/e && source $DIR/e/bin/activate
export PYTHONPATH=$DIR:$PYTHONPATH
${DIR}/scripts/acoustid_sync.py -c ${DIR}/acoustid.conf
exit $?

