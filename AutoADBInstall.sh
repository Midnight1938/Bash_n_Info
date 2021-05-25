#!/bin/bash
 
read -r -p "Are You Sure? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
 for f in *.apk; do
    echo Installing $f 
    echo '~~~~~~~~~~~~~~~'
    adb install $f
    echo '~~~~~~~~~~~~~~~'
    echo ''
done

 ;;
    [nN][oO]|[nN])
 echo "No"
       ;;
    *)
 echo "Invalid input..."
 sleep 2s
 exit 1
 ;;
esac