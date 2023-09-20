# Bash script for `jobrunner` to install AMReX

# Setup AMReX
if [ ! -d "AMReX" ]; then
	git clone git@github.com:Box-Tools/amrex.git --branch main AMReX && cd AMReX

	# checkout desired sha-1
	git checkout divfree-testing
else
	cd AMReX
fi

# configure and install amrex in 2D
make clean
./configure --dim=2 --prefix=$AMREX2D_HOME --enable-tiny-profile=yes --debug=no
make -j
make install

# configure and install amrex in 3D
make clean
./configure --dim=3 --prefix=$AMREX3D_HOME --enable-tiny-profile=yes --debug=no
make -j
make install
