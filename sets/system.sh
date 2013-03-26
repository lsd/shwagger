# system.export alias
export alias upornot_google="ping google.com"
export alias upornot_pwnjutsu="ping pwnjutsu.com"
export alias rd='rmdir'
export alias rm='rm -i'
export alias free="free -m"
export alias dfhuman="df -h"

# TODO What are the most used ls export aliases? 
# # might cause cluttered namespace? I like ls, ls, lsa, lsd
if [ "`uname`" = "Darwin" ]; then
  unset ls
  unset lsf
  unset lsd
  # To get color to show up when piping to less/more, we need to force the color
  # and define a terminal, since it's not sending output to a TTY.
  # Then we need to have more/less escape the color sequences using -r
  # demo: export CLICOLOR_FORCE='YES';export TERM='xterm-color';ls | less -r
  #export alias ls="export CLICOLOR_FORCE='YES';export TERM='xterm-color';ls -G"
  export alias ls="export TERM='xterm-color';ls -G"
  export alias less='less -r'
  export alias more='more -r'

  export alias lsf='ls -hAlFG'
  export alias lsd='ls -dG */'
else
  export alias ls='ls --color=always'
  export alias lsf='ls -hAlF --group-directories-first --color=always --time-style=+" %m/%d/%y %I:%M %p "'
  export alias lsd='ls -d */'
fi

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  export alias grep='grep --color=auto'
  export alias fgrep='fgrep --color=auto'
  export alias egrep='egrep --color=auto'
  export alias l='ls --color -l'
  export alias lh='ls --color -lh'
  export alias ll='ls --color -la'
  export alias ls='ls --color=auto'
fi

export alias la='ls -A'
export alias l='ls -CF'
export alias lsa='ls -lasthc'
export alias ll='ls -all'
export alias lsd='ls -adG */'

