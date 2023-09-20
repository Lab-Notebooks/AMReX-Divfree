# cache the value of current working directory
NodeDir=$(realpath .)

ExternalSimName="incompFlow/FlashExternal"

# Link private simulation directory
rm -r $FLASHX_HOME/source/Simulation/SimulationMain/$ExternalSimName
ln -s $NodeDir $FLASHX_HOME/source/Simulation/SimulationMain/$ExternalSimName 

# run Flash-X setup
cd $FLASHX_HOME && git checkout amrex-facevars-updates && ./setup $ExternalSimName $FlashOptions

# compile the simulation and copy files
cd $FLASHX_HOME/object && make -j && cp flashx $NodeDir/
