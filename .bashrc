#
# ~/.bashrc
#

# If not running interactively, don't do anything
stty -ixon
PS1="\[\033[38;5;12m\]\w/ \[$(tput sgr0)\] "

#alias
alias ls='ls --color=auto'
alias f='vifm'
alias cn='connmanctl'
alias rwifi='sudo systemctl restart wpa_supplicant.service'
alias gotop='gotop -c bright'
alias ase='/home/leorr/.steam/SteamApps/common/Aseprite/aseprite -b'
alias steamupdate='steamcmd +login lieonerdo +app_update 431730 +quit'
alias diary='vim /home/leorr/.diary/$(date -d "" +"%d-%m")'

#functions
#git commit all and push
aseexport(){
	ase $1 --ignore-empty --all-layers --save-as '{layer}-.png'
}

gcp(){
	git add -A 
	git commit -m "$(date "+%Y/%m/%d %H:%M") $1 $2 $3 $4 $5 $6 $7 $8 $9"
	git push
}
