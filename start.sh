#!/bin/bash
BINDIR=/PATH_TO_BIN
DATADIR=/PATH_TO_NODE

$BINDIR/nodeos  --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt & echo $! > $DATADIR/eosd.pid

