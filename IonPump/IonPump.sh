#!/bin/sh

DS='IonPump'
LIB="$DS"
DSPATH=$(python -c "import imp;print(imp.find_module('$LIB')[1])")
if [ "" = "$(echo "$1$2$3" | grep "\?\|attach")" ] ; then
  screen -dm -S $DS-$1 python $DSPATH/$DS.py $1 $2
else
  python $DSPATH/$DS.py $1 $2
fi
