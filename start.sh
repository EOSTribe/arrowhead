#!/bin/bash
DATADIR=/opt/ArrowheadNode

nodeos true --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt & echo $! > $DATADIR/eosd.pid

