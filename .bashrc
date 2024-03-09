# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias r='ranger'

# Add an "alert" alias for long running commands.  Use like so:
# -  sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

set -o vi

export EDITOR=vim.gtk3
export R_LIBS_USER="/home/mlbernauer/.R/"
xrdb ~/.Xresources
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences


export PATH="$PATH:/opt/pulsesecure/bin"
export PATH="$PATH:/home/mlbernauer/.local/bin/"
export PATH=$PATH:/home/mlbernauer/.cargo/bin
export CENSUS_KEY=9c7c139cfda34bf3a28ef305a272da210fbf1828
#export GITHUB_TOKEN=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
export GITHUB_USER=mlbernauer

export DRUG_DICT="/home/mlbernauer/git/drugmap/rxnorm.dict"
export NOTES="/home/mlbernauer/.notes/"
PROMPT_DIRTRIM=1
alias todo="vim ~/.todo.md"
alias t="timecard"
alias connect-speaker="bluetoothctl connect 5C:FB:7C:C3:64:A8"
alias connect-headphones="bluetoothctl connect F8:AB:E5:46:36:17"
alias connect-earphones="bluetoothctl connect F4:4E:FD:00:05:02"
alias vpn="sudo openconnect --passwd-on-stdin -u michaelb https://webvpn.rs21.io <<< jMr3p743@"
alias xclip="xclip -selection c"
alias htop="htop -s PERCENT_CPU"
alias dm="xrandr --output eDP-1 --off --output DP-2 --mode 2560x1440"
alias lm="xrandr --output DP-1 --off --output eDP-1 --mode 1920x1080"
alias linechart='gnuplot -p -e "set autoscale;plot \"-\" using 1 with linespoints notitle"'
alias barchart='gnuplot -p -e "set autoscale; plot \"-\" using 1 with boxes notitle"'
alias getpetname="printf '%s\n' {love,cuddle,snuggle,kiss,kissy,tickle,wiggle}\" \"{muffin,buscuit,waffle,cupcake,cookie} | shuf | head -n1"
alias weather='curl wttr.in/albuquerque'
alias stitch="perl -ne 's/!include// ? print qx/cat \$_/ : print'"
alias csvc="perl <(curl -s https://raw.githubusercontent.com/mlbernauer/scripts/main/csvcols)"
alias battery="upower -i $(upower -e | grep BAT) | grep percentage"

#. "$HOME/.cargo/env"
export CENSUS_API_KEY="2abf85470d393b3bc249771dd1f1acaffe8be7a8"

PATH="/home/mlbernauer/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mlbernauer/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mlbernauer/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mlbernauer/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mlbernauer/perl5"; export PERL_MM_OPT;

archive () {
	tar cvf $1.tar.gz -I pigz $1
	rm -rf $1
}
rmd-render () {
	Rscript -e "rmarkdown::render('$1')"
}
rmd-serve () {
	Rscript -e "rmarkdown::run('$1')"
}
create-deck () {
	ls *.$1 | perl -lne 'BEGIN{print "---\n  title:\n  date: \\today\n  theme: Dresden\n---\n"}; print "# $_\n![$_]($_)\n"'
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mlbernauer/.google-cloud-sdk/path.bash.inc' ]; then . '/home/mlbernauer/.google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mlbernauer/.google-cloud-sdk/completion.bash.inc' ]; then . '/home/mlbernauer/.google-cloud-sdk/completion.bash.inc'; fi

alias nvimr-help="cat ~/.nvim-r.txt"

export LOCALIA_MODEL_PATH=/home/mlbernauer/git/landscan/new/models/
export NOTES=/home/mlbernauer/.notes/
export DRUGMAP=/home/mlbernauer/git/drugmap/DRUGMAP.txt
export PATH=/home/mlbernauer/edirect:${PATH}
export MIMIC=/home/mlbernauer/hdd/mimic-iv/db/mimic-iv.db

function temp-sh () {
	curl -F "file=@${1}" https://temp.sh/upload
	echo
}

function create-new-flexdashboard () {
	R -e 'rmarkdown::draft("dashboard.Rmd", template = "flex_dashboard_bslib", package = "flexdashboard")'
}

function shiny-run () {
	Rscript -e "shiny::runApp(\"$1\", port = 8081)"
}
