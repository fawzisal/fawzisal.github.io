#### .bash_profile
# 
#  Fawzi Salama
#  Dec 30, 2019
# 
#### (REMOVED exports, PATH variables) ####

#GENERAL
alias cd-="cd -"
alias cd.="cd .."
function cdr(){ dir="$(fd . -d1 -td | shuf | head -n1)"; if [ -e $dir ]; then echo "entering: $dir"; cd "$dir"; opo; fi; }
alias cdn=ndr
function cdp(){ cd "$(pbpaste)"; }

alias o="open"
function opr(){ open $(ls | shuf -n1); }
function op(){fd -iI -d1 "$1" -x open {};};

alias clip='pbcopy'
alias unclip=pbpaste
alias wrap="tput smam"
alias nowrap="tput rmam"
alias k=clear
alias px="unclip | bash --rcfile ~/.bash_profile"
alias vimc="unclip | vim -"
function fa(){ for i in $(ls); do { echo $($1 "$i"); }; done; };
function ndr() { mkdir "$1"; cd "$1"; };
function pg(){ ping -t1 -c1 www.google.com; }

#BASH PROFILE, ETC.
alias be='vim ~/.bash_profile'
alias bes='sub ~/.bash_profile'
alias br='. ~/.bash_profile'
function bashf(){ rg "$1" ~/.bash_profile; }
alias vime='vim ~/.vimrc'
function manf(){ man "$1" | rg -in -C1 "$2"; }

#HOMEBREW
alias brs="brew search"
alias brsd="brew search --desc"
alias bri="brew install"
alias bru="brew uninstall"
alias brg="brew upgrade"
alias brd="brew info"

#PYTHON
alias py=python
alias pii="pip install"
alias piu="pip uninstall"
alias pis="pip search"
alias pil="pip list"


#DIR & FILE UTILS
alias du="du -hd1"
alias dfs="df -glH"
alias rgi="rg -i"
alias fdi="fd -iI"
alias rmr="rm -rfv"
alias cpr="cp -rv"
alias nom="rename --nows *; rename -z *; rename -S '_-_' - *;"

alias  ll='exa -l'
alias lld='exa -ls date'
alias lls='exa -ls size'
alias lll='exa -ls accessed'
alias  ls='exa'
alias lsc="ls | pbcopy"
function la(){ fd -d1 -tf -HiI "$1"; }
function lo(){ fd -d1 -tf -HiI "$1" -x subl "{}"; }
function lor(){ subl "$(fd -d1 -tf -HiI "$1" | shuf -n1)"; }
function lsr(){ fd -d1 -tf -HiI "$1" | shuf -n1; }
function cda(){ fd -d1 -td -HiI "$1"; }
function cdo(){ cd $(fd -d1 -td -HiI "$1" | shuf -n1;); }

#MPV
alias mp3="mpv --audio-display=no --no-video"
alias opp="mp3 *mp3"
function op4(){ mpv $(fd -e mp4 -e mkv -e webm -e avi -d1); }
alias op0=op4
alias opl="mp3 --loop-playlist *mp3"
alias opll="mpv *m3u"
alias op9="mpv *m3u"
alias opo="mp3 --loop-playlist --shuffle *mp3"

alias apropo='function apropos__(){ apropos $1 2>/dev/null | sub & }; apropos__'
function apro(){ apropos $1 2>/dev/null; };

# GIT/GITHUB
alias ga='git add'
alias gm='git merge'
alias gal='git add .'
alias galc='git add .; git commit -m '
alias gc='git commit -m'
alias giac='git init; git add .; git commit -m '
alias gac='git add .; git commit -m '
alias gs='git status'
alias gl="git log -n10 --format=\"%Cgreen %h %Cred %ar %Creset %s\""
alias gd="git diff"
alias gle="git log -n10 --format=oneline"
alias gb="git branch"
alias gx="git checkout"
function giti(){ echo $1 >> .gitignore; };
alias gph='git push hub master'
alias gpl='git pull origin master'
alias gps='git push origin master'

#YOUTUBE-DL
function yt2mp3(){ youtube-dl -v --embed-thumbnail -x --audio-format 'mp3' "$1" "$2"; }
function yt2m4a(){ youtube-dl -v --embed-thumbnail -x --audio-format 'm4a' "$1" "$2"; }
function ytdlw(){ youtube-dl -f 'worst' "$1"; }
function ytdl(){ youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' "$1"; }
function println(){ sed -n "$2p;d" $1;}
function clipln(){ sed -n "$2p;d" $1|clip;};

#MPS
alias mps=mpsyt
alias mps_music="mpsyt set show_video False, set search_music True, set order view, q; mpsyt"
alias mps_news="mpsyt set show_video True, set search_music False, set order date, q; mpsyt"

#MISC APPS/PACKAGES
alias sub=subl
alias h='function hdi(){ howdoi "$*" -can3; }; hdi'
alias d="BROWSER=w3m ddgr -n5"
alias w="w3m"
alias see="qlmanage -p"
alias xf='exiftool -g -s'
alias oo='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
function inc(){'/Applications/Chrome.app/Contents/MacOS/Google Chrome' --incognito $@;}
alias np="cd $NEWSPATH/files/podcasts"
alias rebit="open bitbar://refreshPlugin?name=*"
alias hisf="hstr"
alias his="hstr -n"
alias def="osx-dictionary -d 'Dictionary' $@ 2> /dev/null"
alias syn="osx-dictionary -d 'Thesaurus' $@ 2> /dev/null"
alias qmv="qmv -d --editor='/usr/local/bin/vim'"


