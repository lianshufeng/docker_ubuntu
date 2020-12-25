#!/bin/bash
set -e


if [ "$update_source" = "ali" ];then
	echo "更换阿里源	---------------------------------------------->"
	#update source
	sed -i 's/archive.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
	sed -i 's/security.ubuntu/mirrors.aliyun/g' /etc/apt/sources.list
	
	apt-get clean -y
	apt-get update --fix-missing
	apt-get upgrade -y
	
	#update dns1
	echo "" > /etc/resolv.conf
	echo "nameserver 223.5.5.5" >> /etc/resolv.conf
	echo "nameserver 223.6.6.6" >> /etc/resolv.conf
	echo "nameserver 180.76.76.76" >> /etc/resolv.conf	
	
	
	
fi
 
if [ "$update_source" = "163" ];then
	echo "更换163的源	---------------------------------------------->"
	#update source
	sed -i 's/archive.ubuntu/mirrors.163/g' /etc/apt/sources.list
	sed -i 's/security.ubuntu/mirrors.163/g' /etc/apt/sources.list
		
	apt-get clean -y
	apt-get update --fix-missing
	apt-get upgrade -y
	
	#update dns1
	echo "" > /etc/resolv.conf
	echo "nameserver 223.5.5.5" >> /etc/resolv.conf
	echo "nameserver 223.6.6.6" >> /etc/resolv.conf
	echo "nameserver 180.76.76.76" >> /etc/resolv.conf	
	
	
	
fi


