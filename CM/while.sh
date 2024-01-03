#!/bin/bash

#!/bin/bash

ANS='Y'
while [ "$ANS" == 'Y' ]
do
        echo -e "\nPlease enter a user to add"
        read MYUSER
        ./creatuser.sh "$MYUSER"
        echo -e "\nDo you want to add one more user?"
        read ANS
done

