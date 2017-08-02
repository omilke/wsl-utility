### mvn-wrapper.sh
#!/bin/bash

#re-use specific mvn 
#mvn_cmd="C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2017.1.1\plugins\maven\lib\maven3\bin\mvn.cmd"

#...or just the one from the %PATH%
mvn_cmd="mvn.cmd"

params=""
for var in "$@"
    do
        params="$params $var"
done

#simply delegate all own parameters to mvn.cmd
/mnt/c/Windows/System32/cmd.exe /C "$mvn_cmd" $params