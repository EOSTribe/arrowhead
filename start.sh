#!/bin/bash
DATADIR=/opt/arrowhead/ArrowheadNode

nodeos --enable-stale-production true --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt & echo $! > $DATADIR/eosd.pid

