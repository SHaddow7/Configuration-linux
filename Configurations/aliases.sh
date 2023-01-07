#------------------------------------------////
# Simple alias
#------------------------------------------////

# (pour lancer les aliases taper refresh puis refreshaliases dans votre terminal)
alias refreshaliases="source ~/.aliases"
alias refresh2="source ~/.zshrc"
alias refresh="source ~/.bashrc"
alias reload='source ~/.bashrc'
alias bc='bc -l'
# instal zsh
# alias izsh='sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
# alias exe='chmod +x'
# lzip='7z l'

#------------------------------------------////
# ALIASES, BASHRC
#------------------------------------------////

# alias editbash="nano $HOME/.bash_aliases"
# alias ali="cat /home/$USER/.bash_aliases | grep '^alias' | sed 's/alias //g' | grep -e '^[^=]*' "
# alias nanbash='nano .bashrc'
# alias editb='nano ~/.bashrc && source ~/.bashrc'

#------------------------------------------////
# Date et Heure
#------------------------------------------////

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

#------------------------------------------////
# VIM
#------------------------------------------////

alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
alias vimclear='sudo apt remove vim -y'
# Clone Vim Repository from Github.fom & recheck new installed vim path
alias vimclone='git clone https://github.com/vim/vim.git && hash -r'
# sync .vimrc file from repository to user's home directory
alias vimrc='cp -v /home/$USER/vimrc/.vimrc /home/$USER/.vimrc && cp -v /home/$USER/vimrc/templates/html.skel /home/$USER/.vim/templates/html.skel'
# Go to ~/.vim/colors directory
alias vimcolors='cd /home/$USER/.vim/colors'
# Go to ~/.vim/autoload directory
alias vimautoload='cd /home/$USER/.vim/autoload'
# Go to ~/.vim/bundle directory
alias vimbundle='cd /home/$USER/.vim/bundle'

#------------------------------------------////
# GIT
#------------------------------------------////

alias gs='git status'
alias gst='git status -sb'
alias gl='git log'
alias ga='git add'
alias gaa='git add -A'
alias gal='git add .'
alias gall='git add .'
alias gca='git commit -a'
alias gc='git commit -m'
alias gcot='git checkout'
alias gchekout='git checkout'
alias gchckout='git checkout'
alias gckout='it checkout'
alias go='git push -u origin'
alias gsh='git stash'
alias gw='git whatchanged'
alias nah='git clean -df && git checkout -- .'
alias merge='git merge'

gsend () {
    git commit -am "$1" && git push
}
newbranch() {
	git checkout -b "$1"; 
	git push -u origin "$1"; 
}
rmbranch() { 
	git branch -D "$1"; 
	git push origin --delete "$1";
}
newrepo() {
	git init;
	touch readme.md;
	touch .gitignore; 
	commit -m "Initial commit.";
}
clone(){
    echo Cloning $1 to ~/git/$1;
    cd ~/git;
    git clone git@github.com:$1 $1;
    cd $1;
}

#------------------------------------------////
# NPM
#------------------------------------------////

# alias ns='npm run start'
# alias nt='npm run test'
# alias nb='npm run build'
# alias nbw='npm run build:watch'
# alias nc='npm run clean'
# alias nf='npm run format'
# alias nj='npm run jest'
# alias ne='npm run eslint'
# alias nl='npm run lint'
# alias nw='npm run watch'
# alias np='npm i --package-lock-only'
# alias nv='cat .nvmrc && nvm use'
# alias nvi='nvm install'
# alias ni='npm install'
# alias nis='npm install start'
# alias nibs='npm install build start'
# alias nu='npm update'
# alias ny='npm run yalc-link'
# alias nd='npm run docs'
# alias nk='npm run storybook'
# alias nt='npm run typecheck'

#------------------------------------------////
# Pour les dev
#------------------------------------------////

# Dev
#alias dev='cd ~/Documents/Developer'

#------------------------------------------////
# Les confirmations
#------------------------------------------////

alias root='sudo -i'
alias su='sudo -i'
# Protection pour éviter les supressions douloureuses
alias rm="rm -i"
# alias mv='mv -i'

#------------------------------------------////
# reboot / halt / eteindre
#------------------------------------------////

alias reboot="sudo /sbin/reboot"
alias poweroff="sudo /sbin/poweroff"
alias halt="sudo /sbin/halt"
alias shutdown="sudo /sbin/shutdown"

#------------------------------------------////
# HARDWARE / SYSTEM
#------------------------------------------////

# Information CPU du server
alias cpuinfo='lscpu'
# Pour les vieux systemes /proc/cpuinfo
#alias cpuinfo='less /proc/cpuinfo'
# Obtenir la ram utilisé par la carte graphique / laptop
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
# Informations sur le Hardware
alias meminfo='free -m -l -t'
# Pour obtenir les process utilisant le plus de memoire
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## Pour obtenir les process utilisant le plus de memoire
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
# alias showZombie='ps axo stat,ppid,pid,comm | grep -w defunct'
# Filesystem diskspace usage
alias dus='df -h'

#------------------------------------------////
# COMMANDES APT (ubuntu)
#------------------------------------------////

alias apt-get='sudo apt-get'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias upgradedist='sudo apt-get dist-upgrade'
alias miseàjour='agu && agg && agd'
alias install='sudo apt install'
alias delete='sudo apt-get remove'
alias findpkg='apt-cache search'

#------------------------------------------////
# COMMANDES pacman (archlinux)
#------------------------------------------////

# alias update="sudo pacman -Syyuu"
# alias install="sudo pacman -S"
# alias delete="sudo pacman -R"
# alias purge="sudo pacman -R"
# alias forcepurge="sudo pacman -Rsu"
# alias superpurge="sudo pacman -Rsc"
# alias searchpkg="sudo pacman -Ssq | grep --color=auto"
# alias searchpkgi="sudo pacman -Ssq | grep --color=auto"
# alias findpkg="sudo pacman -Qq | grep --color=auto"

## yay commands (pour archlinux avec yay pour les paquets AUR)
# alias ynstall="yay -S"
# alias unynstall="yay -S"

#------------------------------------------////
# Utilisation des utilitaire des archives
#------------------------------------------////

# To extract an uncompressed archive:
alias utar='tar -xvf'
# To create an uncompressed archive:
alias untar='tar -cvf'
# To extract a .gz archive:
alias ugz='tar -xzvf'
# To create a .gz archive:
alias zgz='tar -czvf'
# To list the content of an .gz archive:
alias lgz='tar -ztvf'
# To extract a .bz2 archive:
alias ubz2='tar -xjvf'
# To create a .bz2 archive:
alias cbz2='tar -cjvf'
# To extract a .tar in specified Directory:
alias ubz2='tar -xvf'
# To list the content of an .bz2 archive:
alias lbz2='tar -jtvf'
# To create a .gz archive and exclude all jpg,gif,... from the tgz
# alias cgz='tar czvf /path/to/foo.tgz --exclude=\*.{jpg,gif,png,wmv,flv,tar.gz,zip} /path/to/foo/'

#------------------------------------------////
# 	
#------------------------------------------////

alias run="sh"
alias ls='ls --color=auto'
alias sl='ls'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias la="ls -lha"
alias lsd='ls -l | grep "^d"'
alias wget='wget -c'
alias lo='locate'
# alias findall="find . -name "$2" -type f -exec du -ch {} + | grep $1"
alias c="clear"
alias cls='clear;ls'
alias path='echo -e ${PATH//:/\\n}'
# alias getsize="du $1 --block-size=1M --max-depth=1 | sort -nr"

#------------------------------------------////
# 
#------------------------------------------////

## Pour lancer lynx avec une config perso
alias lynx="lynx -lss altopaque.lss"
alias calculator='gnome-calculator'
# Sort files by size
alias lt='ls --human-readable --size -1 -S --classify'

#------------------------------------------////
# Repertoires
#------------------------------------------////
 
# See Previous Directories
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

#------------------------------------------////
# Pour les habitués de windows et de sa fenêtre de commande
#------------------------------------------////

#alias /="cd"
alias DIR="cd"
alias Dir="cd"
alias Dir="cd"
alias DIr="cd"
alias DiR="cd"
alias dir="cd"
alias diR="cd"
alias dIr="cd"
alias dIR="cd"
alias CD="cd"
alias cD="cd"
alias Cd="cd"

#------------------------------------------////
# Options de montages de disque dur
#------------------------------------------////

# Voir uniquement les disques dur montés
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# alias mount='mount |column -t'

#------------------------------------------////
# Commandes pour Grep
#------------------------------------------////

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Extract emails from file
getmail() {
	FILE=$1;
	grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $FILE;
}
# Extract ip from file
getip(){
	grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" $1;
}
geturl(){
	grep http | grep -shoP 'http.*?[" >]' *.txt > http-urls.txt;
}

#------------------------------------------////
# 
#------------------------------------------////

alias h='history'
alias h1='history 10'
alias h2='history 20'
alias h3='history 30'
# To clear all the history and screen
alias hcl='history -c; clear'
alias j='jobs -l'
alias myip='curl ipinfo.io/ip'

# Sort by Modification Time
alias left='ls -t -1'
alias count='find . -type f | wc -l'
alias gh='history | grep'

# Add a copy file progress bar
alias cpv='rsync -ah --info=progress2'

# Create a Python code environement
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
 
#------------------------------------------////
# Networks, Iptable, ports
#------------------------------------------////

alias ipt='sudo /sbin/iptables'
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist
# Generate sha1 digest
alias sha1='openssl sha1'
# get my extern ip
alias myip="curl icanhazip.com"
# get saved WiFi keys
alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"
# Show open ports
alias ports='netstat -tulanp'

## All of our servers eth1 is connected to the Internets via vlan / router etc  ##
alias dnstop='dnstop -l 5  eth1'
# alias vnstat='vnstat -i eth1'
# alias iftop='iftop -i eth1'
alias tcpdump='tcpdump -i eth1'
alias ethtool='ethtool eth1'
 
# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
alias iwconfig='iwconfig wlan0'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping="ping -c 100 -s2"
alias pg='ping google.com -c 5'

#------------------------------------------////
# Les droits utilisateur
#------------------------------------------////

# alias chmod='chmod -c'
# alias rw-='chmod 600'
# alias rwx='chmod 700'
# alias r--='chmod 644'
# alias r-x='chmod 755'
# alias 7="chmod 777 -R ."
# alias s7="sudo chmod 777 -R ."

#------------------------------------------////
# 
#------------------------------------------////

# Si l'utilisateur n'est pas root, passe tout les commandes en sudo
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
	# alias nano='sudo nano'
	# alias vi='sudo nano'
	# alias edit='sudo nano'
	# alias apt-get='sudo apt-get'
	# alias update='sudo apt-get update && sudo apt-get dist-upgrade -y'
	# alias aptitude='sudo apt-get'
	# alias service='sudo service'
fi

#------------------------------------------////
# Fonctions
#------------------------------------------////

mkcd () {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# fonction pour afficher le contenu du dossier dans lequel vous vous deplacer
function cdls() {
    DIR="$*";
        # sans repertoir préciser on se déplace dans le home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # oprions d ela commande ls
        ls -F --color=auto
}  

open ()
{
  sudo nohup $1 &
}

# fais un backup d'un fichier dans un dossier situé dans home ~/BACKUP (qui doit exister avant), ensuite il ouvre le fichier dans vim
dedit () {
    cp -i "$1" "$HOME/Backup/"$1"" &&
    vim "$1"
}

weather() { curl wttr.in/"$1"; }

tally() {
  if [[ $1 == '--help' ]]; then
    echo "Usage: ls | tally";
    return 0;
  fi
  
  sort | uniq -c | sort -n;
}

extract()
{
	# extract file by extension
	     if [ -f $1 ] ; then
	 case $1 in
	     *.tar.bz2)   tar xvjf $1     ;;
	     *.tar.gz)    tar xvzf $1     ;;
	     *.bz2)       bunzip2 $1      ;;
	     *.rar)       unrar x $1      ;;
	     *.gz)        gunzip $1       ;;
	     *.tar)       tar xvf $1      ;;
	     *.tbz2)      tar xvjf $1     ;;
	     *.tgz)       tar xvzf $1     ;;
	     *.zip)       unzip $1        ;;
	     *.Z)         uncompress $1   ;;
	     *.7z)        7z x $1         ;;
	     *)           echo "'$1' cannot be extracted via >extract<" ;;
	 esac
	     else
	 echo "'$1' is not a valid file" ;;
	     fi
}

compress() {
  if [[ -n "$1" ]]; then
    FILE=$1
    case $FILE in
      *.tar ) shift && tar cf $FILE $* ;;
      *.tar.bz2 ) shift && tar cjf $FILE $* ;;
      *.tar.gz ) shift && tar czf $FILE $* ;;
      *.tgz ) shift && tar czf $FILE $* ;;
      *.zip ) shift && zip $FILE $* ;;
      *.rar ) shift && rar $FILE $* ;;
    esac
  else
    echo "Usage: compress <foo.tar.gz> ./foo ./bar"
  fi
}

# Search for a specific file 
# Use: "findfile example"
# Results: prints any files that begin with "example", is not case-sensitive, picks up any file type (ex. result: ExampleTest.docx)
findfile() {
   file = "$@"
   file += "*"
   find . -iname $file 2>&1 | grep -v "Operation not permitted"
}

# Search for all files with a specific extension
# Use: "fondest swift"
# Results: prints all .swift files
findext() {
   ext = "*."
   ext += "$@"
   find . -iname $ext 2>&1 | grep -v "Operation not permitted"
}
