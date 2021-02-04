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

ip_list=(183.141.169.73 125.123.31.229 183.141.168.191 123.157.242.178)
ip_addr=(电信1 电信2 电信3 联通1)
# ip_len=${#ip_list[@]}

for i in {0..4}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
