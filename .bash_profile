export PATH="/usr/local/bin:$PATH:$HOME/npm-global/bin"

export NODE_PATH="/Users/mdesmarteau/npm-global/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="\[\e(B\e[m\]\[\e[1m\] ☯ 🐢  \[\e[2m\]\[\e[4m\]\[\e[4#7m\]𝓜 𝓐 𝓣 𝓣 𝔇 \[\e[24m\]\[\e[1m\]\[\033[0;31m\] ⪼  \[\033[0;35m\]\w\[\e[1m\]\[\033[0;31m\] ⋙ \[\033[1;33m\]\$(parse_git_branch)\[\e[1m\]\[\033[0;31m\] ⤖ \[\033[0;36m\]"
# \[\e[2m\]\[\e[4m\]\[\e[4#7m\]𝓜 𝓐 𝓣 𝓣 𝔇 \[\e[24m\]\[\e[1m\]\[\033[0;31m\]
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# export LSCOLORS=exfxcxdxbxegedabagacad

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

alias bash='sublime ~/.bash_profile'

# List all files colorized in long format, including dot files
alias la="ls -Alhtr ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

alias wrapon='tput rmam'
alias wrapoff='tput smam' 


# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

#git alias
alias gaa="git add ."
alias ga="git add"
alias gc="git commit -m"
alias gpom="git push origin master"
alias gpo="git push origin"
alias hb="hub browse"
alias gckn="git checkout -b"
alias gck="git checkout"
alias gs="git status"



#alias for forder nav
alias cd3="cd ~/Turing/rp3mod && la"
alias cd4="cd ~/Turing/mod4 && la"
alias cdp="cd ~/Turing/mod4/projects && la"
alias cde="cd ~/Turing/mod4/class_exercises && la"
alias cdqs="cd ~/Turing/mod4/projects/quantified-self && la"
alias ..='cd ..'
alias home="cd ~"

#current projects
alias cdsb="cd ~/Turing/rp3mod/projects/stuff_box"

#open web pages
alias goo='open https://www.google.com'

#alias to open apps
alias spot='open -a -j --hide Spotify.app'
alias slack='open -a Slack.app'

#alias open in sublime
alias s2a='sublime .'
alias s2='sublime '
alias s3a='subl .'
alias s3='subl '


#different git log formats
alias gl="git log --format=format:\"%C(auto)%h %C(green)%cD %C(blue)%aN%Creset %s\""
alias gl2="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl3='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold  yellow)%d%C(reset)" --all'


#show or hide hidden files when using ls
alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'



parse_git_branch() {
   
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


source /usr/local/etc/bash_completion.d/git-completion.bash

# function ip {
#     myip=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
#     echo -e "$(ips | sed -e :a -e '$!N;s/\n/${IP_SEPARATOR}/;ta' | sed -e 's/127\.0\.0\.1\${IP_SEPARATOR}//g'), ${myip}"
# }

