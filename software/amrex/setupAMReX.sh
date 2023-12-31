# Bash script for `jobrunner` to install AMReX

# Setup AMReX
if [ ! -d "AMReX" ]; then
	git clone git@github.com:AMReX-codes/amrex.git --branch development AMReX && cd AMReX
else
	cd AMReX
fi

# configure and install amrex in 2D
make clean || true
BITTREE_HOME=$BITTREE_2D_HOME
./configure --dim=2 --prefix=$AMREX2D_HOME --enable-bittree=no --enable-tiny-profile=yes --debug=no
make -j
make install

# configure and install amrex in 3D
make clean || true
BITTREE_HOME=$BITTREE_3D_HOME
./configure --dim=3 --prefix=$AMREX3D_HOME --enable-bittree=no --enable-tiny-profile=yes --debug=no
make -j
make install
