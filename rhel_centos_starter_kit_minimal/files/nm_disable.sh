#!/bin/bash
for IFCFG in /etc/sysconfig/network-scripts/ifcfg-* ;do
echo $IFCFG
OCCURENCE=$(grep NM_CONTROLLED $IFCFG |wc -l)
if [ OCCURENCE == 0 ];
then
cat 
fi
done