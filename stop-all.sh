#!/bin/bash
DIR="/opt/arrowhead/ArrowheadNode"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Main Node"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rMain Node Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode01"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 01"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 01 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode02"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 02"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 02 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode03"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 03"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 03 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode04"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 04"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 04 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode05"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 05"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 05 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode06"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 06"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 06 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode07"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 07"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 07 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode08"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 08"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 08 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode09"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 09"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 09 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode10"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 10"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 10 Stopped. \n"
fi


DIR="/opt/arrowhead/ArrowheadNode11"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 11"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 11 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode12"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 12"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 12 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode13"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 13"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 13 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode14"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 14"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 14 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode15"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 15"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 15 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode16"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 16"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 16 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode17"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 17"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 17 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode18"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 18"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 18 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode19"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 19"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 19 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode20"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 20"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 20 Stopped. \n"
fi

DIR="/opt/arrowhead/ArrowheadNode21"
if [ -f $DIR"/eosd.pid" ]; then
pid=`cat $DIR"/eosd.pid"`
echo $pid
kill $pid
rm -r $DIR"/eosd.pid"
echo -ne "Stoping Node 21"
while true; do
[ ! -d "/proc/$pid/fd" ] && break
echo -ne "."
sleep 1
done
echo -ne "\rNode 21 Stopped. \n"
fi

