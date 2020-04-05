#!/bin/bash
clear
echo "1. Termux"
echo "2. iSH"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/machinegun_ios/machinegun_ios.py /data/data/com.termux/files/usr/bin/machinegun_ios
	dos2unix /data/data/com.termux/files/usr/bin/machinegun_ios
	chmod 777 /data/data/com.termux/files/usr/bin/machinegun_ios
	machinegun_ios

	else
		if [ $numb = "2" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/machinegun_ios/machinegun_ios.py /usr/bin/machinegun_ios
			dos2unix /usr/bin/machinegun_ios
			chmod 777 /usr/bin/machinegun_ios
			machinegun_ios
		else
			echo "Некорректный ввод"
		fi
	fi
