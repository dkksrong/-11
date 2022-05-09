#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/zq/shell/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(213.166.87.3 101.69.24.139)
ip_addr=(伦敦3 联通1)
# ip_len=${#ip_list[@]}

for i in {0..3}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
