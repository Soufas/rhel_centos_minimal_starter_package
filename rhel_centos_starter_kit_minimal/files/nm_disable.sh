#!/bin/bash
CHANGES=0
for IFCFG in /etc/sysconfig/network-scripts/ifcfg-* ;do
echo $IFCFG
OCCURENCE=$(grep NM_CONTROLLED $IFCFG |wc -l)
if [ $OCCURENCE == 0 ];
then
echo NM_CONTROLLED=false >> $IFCFG
CHANGES=$[ $CHANGES + 1 ]
fi
done
if [ $CHANGES -eq 0 ];then
exit 1
fi