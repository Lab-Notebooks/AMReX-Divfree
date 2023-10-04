# Setup Flash-X
if [ ! -d "Flash-X" ]; then
	git clone git@github.com:Flash-X/Flash-X --branch adhruv/bt-follow-up Flash-X && cd Flash-X
        git submodule update --init --recursive
fi
