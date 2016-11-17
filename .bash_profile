# .bashrc

# User specific aliases and functions
export GEM_HOME=$HOME/ruby/gems
export GEM_PATH=$GEM_HOME:/usr/lib/ruby/gems/1.8
export GEM_CACHE=$GEM_HOME/cache

export CLICOLOR=1

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

PATH=$PATH:$HOME/bin

export PATH

SSH_ENV="$HOME/.ssh/environment"

# show git info
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\e[0;36m\u\e[m@[\e[0;33m$(tput bold)$PWD\e[m - \e[0:31m\@\e[m]\e[0:36m$(parse_git_branch)\e[m$ '

#fast search in files, piped through cut to truncate long lines
function acki() {
    ack --ignore-dir=web-compiled "$@" | cut -c 1-200;
}

#fast case insensitive search in files, piped through cut to truncate long lines
function ackii() {
    ack -i --ignore-dir=web-compiled "$@" | cut -c 1-200;
}

#opens files with a specific name
function fo() {
    vi `find -name $@`
}

#shows files with a specific name
function f() {
    find -name $@
}

#shows files with a specific name (case insensitive)
#not named fi because that is a reserved word in bash (endif)
#usage (from fbpoker): fii Launch.php
#usage (from fbpoker): fii *Launch*
function fii() {
  find . -iname $@
}

function random_ints {
  arr_len=$[(RANDOM%4+1)*16]
  declare -a random_ints
  for i in `seq 1 $arr_len`; do
    random_ints[i]=$[RANDOM%10];
  done
  printf '%s:' "${random_ints[@]}"
}

function play_gamelan {
  mel=`random_ints`
  dur=$[(RANDOM%1000)]
  printf 'base duration: %s\nmelody: %s\n' "${dur}" "${mel}"
  cd ~/Documents/Code/musicBox
  `chuck Gamelan.ck gongCycle:${dur} play.ck:0:${dur}:${mel} play.ck:1:${dur}:${mel} play.ck:2:${dur}:${mel} play.ck:3:${dur}:${mel} play.ck:4:${dur}:${mel} play.ck:5:${dur}:${mel}`
}

#use color with ls
alias ls='ls -G'
alias ll='ls -alGfh'
#allows you to use this bashrc alias to automatically source this file after you modify it
alias bashrc='vi ~/.bashrc ; source ~/.bashrc'
#word diff (pfay typically prefers this to standard git diff)
alias wdiff='git diff --color-words'
#character diff (helpful for seeing changes of a few characters within a word)
alias cdiff='git diff --word-diff-regex=.'
#ssh into inomadmusic
alias inomad='ssh inomadmu@inomadmusic.com'
#cd to where the code is
alias code='cd ~/Documents/Code'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias bs='browser-sync start --server --files "*.js, *.html, *.css"'

##
# Your previous /Users/grant/.bash_profile file was backed up as /Users/grant/.bash_profile.macports-saved_2014-04-13_at_18:20:43
##

# MacPorts Installer addition on 2014-04-13_at_18:20:43: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/usr/local/lib:/opt/local/bin:/opt/local/sbin
export PYTHONPATH=${PYTHONPATH}:/Library/Python/2.7/site-packages
# Finished adapting your PATH environment variable for use with MacPorts.


[ -s "/Users/grant/.dnx/dnvm/dnvm.sh" ] && . "/Users/grant/.dnx/dnvm/dnvm.sh" # Load dnvm
