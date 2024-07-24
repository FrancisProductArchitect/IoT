stty -F /dev/ttyS1 raw ispeed 9600 ospeed 9600 -ignpar cs8 -cstopb -echo

stty -F /dev/ttyS1 ispeed 9600 ospeed 9600 -ignpar cs8  -cstopb -echo

#!/bin/bash
# Port setting
stty -F /dev/ttyS1 raw speed 9600
# Loop
while [ 1 ]; do
        READ=`dd if=/dev/ttyS1 count=1`
        echo $READ
done


stty -F /dev/ttyS1 raw ispeed 9600 ospeed 9600 -ignpar cs8 -cstopb -echo
