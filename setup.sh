DIR=/Users/brentbaumgartner/dev/advent-2019
multipass mount $DIR passionate-gnat:/home/advent
multipass exec passionate-gnat echo "alias q='QHOME=/home/advent/q rlwrap -r /home/advent/q/l32/q'" >> ~/.bashrc
multipass exec passionate-gnat source ~/.bashrc
