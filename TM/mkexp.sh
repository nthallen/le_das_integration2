#! /bin/bash

if [ "$1" != "" ]; then
  export Experiment=$1
  echo "Experiment named captured as [$1]"
else
  echo "Fatal: no Experiment name"
  exit 1
fi

sudo mkdir /home/$Experiment
sudo chmod g+w /home/$Experiment
sudo chown $USERNAME /home/$Experiment

sudo mkdir /home/$Experiment/src
sudo chmod g+w /home/$Experiment/src
sudo chown $USERNAME /home/$Experiment/src

sudo mkdir /home/$Experiment/src/TM
sudo chmod g+w /home/$Experiment/src/TM
sudo chown $USERNAME /home/$Experiment/src/TM

export ExpDir=/home/$Experiment/src/TM

cp services $ExpDir/services
cp base.tmc $ExpDir/base.tmc
cp Experiment.config $ExpDir/Experiment.config
cp interact $ExpDir/interact
cp Demo.doit $ExpDir/$Experiment.doit
cp Demo.tbl $ExpDir/$Experiment.tbl
cp Demo.spec $ExpDir/$Experiment.spec
cp Demo.pcm $ExpDir/$Experiment.pcm
cp freemem.tmc $ExpDir/freemem.tmc
cp TMbase.genui $ExpDir/TMbase.genui
cp TMbase.tbl $ExpDir/TMbase.tbl
cp VERSION $ExpDir/VERSION

#sudo sed 's/Demo/'$Experiment'/g' $ExpDir/*
sudo sed -i 's/@NAME@/'$Experiment'/g' $ExpDir/*

exit 0