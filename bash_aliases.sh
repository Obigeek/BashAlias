# Ultimate Bash Alias Project
# Version 1.0.0

# ----- Special program Aliases -----
# Only enable these if you install the required packages

# Pydf package
#alias df='pydf'

# NCDU
#alias du='ncdu'

# The Fuck program (Github > nvbn/thefuck)
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# LS Colours
# Color Library by trapd00r (Github > trapdoor/LS_COLORS)
if [ -f ~/.dircolors ]; then
  eval $(dircolors -b $HOME/.dircolors)
fi

# Todo's
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"


# ----- General Aliases -----
alias rebash='source ~/.bashrc'

# LS
alias ls='ls --color=always -CFX'
alias sl='ls --color=always -CFX'
alias lsl='ls --color=always -lhFA | less -R'
alias lsd='ls --color=always -ld'
alias lx='ls --color=always -X'
alias lr='ls --color=always -XR'

# CD
alias .1='cd .. && clear && ls'
alias .2='cd ../.. && clear && ls'
alias .3='cd ../../.. && clear && ls'
alias .4='cd ../../../.. && clear && ls'
alias .5='cd ../../../../.. && clear && ls'

# IP
alias lip='hostname -I'
alias ipinfo='curl ifconfig.me && curl ifconfig.me/host'

# System Maintenance
if [ $UID -ne 0 ]; then
  alias install='sudo apt-get install'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get upgrade'

  alias reboot='sudo reboot'
  alias shutdown='sudo shutdown -h'
else
  alias install='apt-get install'
  alias update='apt-get update'
  alias upgrade='apt-get upgrade'

  alias reboot='reboot'
  alias shutdown='shutdown -h'
fi

alias !!='sudo !!'

# Misc common Programs
alias grep='grep --color=auto'
alias histg='history | grep'
alias cl='clear'
alias cls='clear && ls'
alias wget='wget -c'
alias rmr='rm -I -r --preserve-root'
alias mkp='mkdir -pv'
alias cmount="mount | column -t"
alias free='free -mt'
alias ps='ps auxf'

# Turn last command into a script
alias makescript="fc -rnl | head -1 >"

# Generate a password
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"

# Tree
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

# Time
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# A few safety nets
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# ----- Useful Funcitons -----

# CDLS
function cs {
  cd $1 && clear && ls
}
alias cd='cs'

# MKDIR CS LS
function mkcd {
  mkdir -pv "$@"
  cd "$1"
  clear
  ls
}

# System Info
myinfo () {
  printf "CPU: "
  cat /proc/cpuinfo | grep "model name" | head -1 | awk '{ for (i = 4; i <= NF; i++) printf "%s ", $i }'
  printf "\n"

  cat /etc/issue | awk '{ printf "OS: %s %s %s %s | " , $1 , $2 , $3 , $4 }'
  uname -a | awk '{ printf "Kernel: %s " , $3 }'
  uname -m | awk '{ printf "%s | " , $1 }'
  kded4 --version | grep "KDE Development Platform" | awk '{ printf "KDE: %s", $4 }'
  printf "\n"
  uptime | awk '{ printf "Uptime: %s %s %s", $3, $4, $5 }' | sed 's/,//g'
  printf "\n"
}

# Uptime
myuptime () {
  uptime | awk '{ print "Uptime:", $3, $4, $5 }' | sed 's/,//g'
  return;
}

# Backup
backup () {
cp "$1"{,.bak};
}

# Extract
# Extract function by Vitalli Tereshchuk (Github > xvoland/Extract)
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

# MD5 Checksum Checker
md5check() { md5sum "$1" | grep "$2";}

# Permalias
function permalias ()
{
  alias "$*";
  echo alias "$*" >> ~/.bash_aliases
}

# -----//----- Additional Aliases -----//-----
# These are not part of the bash_alias distrobution
