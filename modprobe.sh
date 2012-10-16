if [[ $1 == -l ]]
then

if [ -z $2 ]    
then
find /lib/modules/$(uname -r) -name '*.ko' | sed -e "s#\/lib\/modules\/$(uname -r)\/##g"
else
find /lib/modules/$(uname -r) -name '*.ko' | sed -e "s#\/lib\/modules\/$(uname -r)\/##g" | grep $2
fi

else
/sbin/modprobe $@
fi
