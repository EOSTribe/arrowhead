#!/bin/bash
DATADIR=/opt/arrowhead/ArrowheadNode
LOGDIR=/opt/arrowhead/ArrowheadLogs
DATADIR01=/opt/arrowhead/ArrowheadNode01
DATADIR02=/opt/arrowhead/ArrowheadNode02
DATADIR03=/opt/arrowhead/ArrowheadNode03
DATADIR04=/opt/arrowhead/ArrowheadNode04
DATADIR05=/opt/arrowhead/ArrowheadNode05
DATADIR06=/opt/arrowhead/ArrowheadNode06
DATADIR07=/opt/arrowhead/ArrowheadNode07
DATADIR08=/opt/arrowhead/ArrowheadNode08
DATADIR09=/opt/arrowhead/ArrowheadNode09
DATADIR10=/opt/arrowhead/ArrowheadNode10
DATADIR11=/opt/arrowhead/ArrowheadNode11
DATADIR12=/opt/arrowhead/ArrowheadNode12
DATADIR13=/opt/arrowhead/ArrowheadNode13
DATADIR14=/opt/arrowhead/ArrowheadNode14
DATADIR15=/opt/arrowhead/ArrowheadNode15
DATADIR16=/opt/arrowhead/ArrowheadNode16
DATADIR17=/opt/arrowhead/ArrowheadNode17
DATADIR18=/opt/arrowhead/ArrowheadNode18
DATADIR19=/opt/arrowhead/ArrowheadNode19
DATADIR20=/opt/arrowhead/ArrowheadNode20
DATADIR21=/opt/arrowhead/ArrowheadNode21

#nodeos --enable-stale-production true --data-dir $DATADIR --config-dir $DATADIR > $LOGDIR/stdout.txt 2> $LOGDIR/eosio.log & echo $! > $DATADIR/eosd.pid
nodeos --data-dir $DATADIR01 --config-dir $DATADIR01 > $LOGDIR/stdout.txt 2> $LOGDIR/eos01.log & echo $! > $DATADIR01/eosd.pid
nodeos --data-dir $DATADIR02 --config-dir $DATADIR02 > $LOGDIR/stdout.txt 2> $LOGDIR/eos02.log & echo $! > $DATADIR02/eosd.pid
nodeos --data-dir $DATADIR03 --config-dir $DATADIR03 > $LOGDIR/stdout.txt 2> $LOGDIR/eos03.log & echo $! > $DATADIR03/eosd.pid
nodeos --data-dir $DATADIR04 --config-dir $DATADIR04 > $LOGDIR/stdout.txt 2> $LOGDIR/eos04.log & echo $! > $DATADIR04/eosd.pid
nodeos --data-dir $DATADIR05 --config-dir $DATADIR05 > $LOGDIR/stdout.txt 2> $LOGDIR/eos05.log & echo $! > $DATADIR05/eosd.pid
nodeos --data-dir $DATADIR06 --config-dir $DATADIR06 > $LOGDIR/stdout.txt 2> $LOGDIR/eos06.log & echo $! > $DATADIR06/eosd.pid
nodeos --data-dir $DATADIR07 --config-dir $DATADIR07 > $LOGDIR/stdout.txt 2> $LOGDIR/eos07.log & echo $! > $DATADIR07/eosd.pid
nodeos --data-dir $DATADIR08 --config-dir $DATADIR08 > $LOGDIR/stdout.txt 2> $LOGDIR/eos08.log & echo $! > $DATADIR08/eosd.pid
nodeos --data-dir $DATADIR09 --config-dir $DATADIR09 > $LOGDIR/stdout.txt 2> $LOGDIR/eos09.log & echo $! > $DATADIR09/eosd.pid
nodeos --data-dir $DATADIR10 --config-dir $DATADIR10 > $LOGDIR/stdout.txt 2> $LOGDIR/eos10.log & echo $! > $DATADIR10/eosd.pid
nodeos --data-dir $DATADIR11 --config-dir $DATADIR11 > $LOGDIR/stdout.txt 2> $LOGDIR/eos11.log & echo $! > $DATADIR11/eosd.pid
nodeos --data-dir $DATADIR12 --config-dir $DATADIR12 > $LOGDIR/stdout.txt 2> $LOGDIR/eos12.log & echo $! > $DATADIR12/eosd.pid
nodeos --data-dir $DATADIR13 --config-dir $DATADIR13 > $LOGDIR/stdout.txt 2> $LOGDIR/eos13.log & echo $! > $DATADIR13/eosd.pid
nodeos --data-dir $DATADIR14 --config-dir $DATADIR14 > $LOGDIR/stdout.txt 2> $LOGDIR/eos14.log & echo $! > $DATADIR14/eosd.pid
nodeos --data-dir $DATADIR15 --config-dir $DATADIR15 > $LOGDIR/stdout.txt 2> $LOGDIR/eos15.log & echo $! > $DATADIR15/eosd.pid
nodeos --data-dir $DATADIR16 --config-dir $DATADIR16 > $LOGDIR/stdout.txt 2> $LOGDIR/eos16.log & echo $! > $DATADIR16/eosd.pid
nodeos --data-dir $DATADIR17 --config-dir $DATADIR17 > $LOGDIR/stdout.txt 2> $LOGDIR/eos17.log & echo $! > $DATADIR17/eosd.pid
nodeos --data-dir $DATADIR18 --config-dir $DATADIR18 > $LOGDIR/stdout.txt 2> $LOGDIR/eos18.log & echo $! > $DATADIR18/eosd.pid
nodeos --data-dir $DATADIR19 --config-dir $DATADIR19 > $LOGDIR/stdout.txt 2> $LOGDIR/eos19.log & echo $! > $DATADIR19/eosd.pid
nodeos --data-dir $DATADIR20 --config-dir $DATADIR20 > $LOGDIR/stdout.txt 2> $LOGDIR/eos20.log & echo $! > $DATADIR20/eosd.pid
nodeos --data-dir $DATADIR21 --config-dir $DATADIR21 > $LOGDIR/stdout.txt 2> $LOGDIR/eos21.log & echo $! > $DATADIR21/eosd.pid
