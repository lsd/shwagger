if [ "`uname`" = "Darwin" ]; then
  USING_OSX=true
  export VISUAL='mvim -f'
  export EDITOR='mvim -f'
fi
export alias ctags='/usr/local/bin/ctags'
# git.export alias
# git export aliases can also go in ~/.gitconfig
export alias g='git'
export alias gst='git status'
export alias gs='git push'
export alias gc='git commit'
export alias gca='git commit -a'
export alias ga='git add'
export alias gco='git checkout'
export alias gb='git branch'
export alias gm='git merge'
export alias gd="git diff"
