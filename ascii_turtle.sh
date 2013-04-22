#!/bin/bash

IFS=$'\n'
read -d '' right <<"EOF"
                                       ___-------___
                                   _-~~             ~~-_
                                _-~                    /~-_
             /^\\__/^\\         /~  \\                   /    \\
           /|  O|| O|        /      \\_______________/        \\
          | |___||__|      /       /                \\          \\
          |          \\    /      /                    \\          \\
          |   (_______) /______/                        \\_________ \\
          |         / /         \\                      /            \\
           \\         \\^\\\\         \\                  /               \\     /
             \\         ||           \\______________/      _-_       //\\__//
               \\       ||------_-~~-_ ------------- \\ --/~   ~\\    || __/
                 ~-----||====/~     |==================|       |/~~~~~
                  (_(__/  ./     /                    \\_\\      \\.
                         (_(___/                         (_(___/
EOF

read -d '' forward <<"EOF"
                                       ___-------___
                                   _-~~             ~~-_
                                _-~                    /~-_
            /^\\__/^\\          /~  \\                   /    \\
          /| O || O |\\       /      \\_______________/        \\
         | |___||___| |    /       /                \\          \\
         |            |   /      /                    \\          \\
         |  (_______) | /______/                        \\_________ \\
          \\         / /         \\                      /            \\
           \\         \\^\\\\         \\                  /               \\     /
             \\         ||           \\______________/      _-_       //\\__//
               \\       ||------_-~~-_ ------------- \\ --/~   ~\\    || __/
                 ~-----||====/~     |==================|       |/~~~~~
                  (_(__/  ./     /                    \\_\\      \\.
                         (_(___/                         (_(___/
EOF

read -d '' left <<"EOF"                         
                                       ___-------___
                                   _-~~             ~~-_
                                _-~                    /~-_
           /^\\__/^\\           /~  \\                   /    \\
          |O  ||O  |\\        /      \\_______________/        \\
          |___||___| |     /       /                \\          \\
         /           |    /      /                    \\          \\
        (_______)    |  /______/                        \\_________ \\
          |         / /         \\                      /            \\
           \\         \\^\\\\         \\                  /               \\     /
             \\         ||           \\______________/      _-_       //\\__//
               \\       ||------_-~~-_ ------------- \\ --/~   ~\\    || __/
                 ~-----||====/~     |==================|       |/~~~~~
                  (_(__/  ./     /                    \\_\\      \\.
                         (_(___/                         (_(___/
EOF

# watch for ^C and quit
trap finally INT
finally() {
    clear
    unset IFS
    exit 0
}

# main loop
while [ 1 ]; do
    clear
    echo "$right"
    echo "CTRL+C to exit"
    sleep 1
    clear
    echo "$left"
    echo "CTRL+C to exit"
    sleep 1
    clear
    echo "$forward"
    echo "CTRL+C to exit"
    sleep 2
done;

#CTRL+C to quit
