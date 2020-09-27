#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\W \$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/lib/bash-git-prompt/gitprompt.sh ]; then
   # To only show the git prompt in or under a repository directory
   GIT_PROMPT_ONLY_IN_REPO=1
   # To use upstream's default theme
   # GIT_PROMPT_THEME=Default
   # To use upstream's default theme, modified by arch maintainer
   GIT_PROMPT_THEME=Default_Arch
   GIT_PROMPT_END=" \n${White}${ResetColor}$ "
   source /usr/lib/bash-git-prompt/gitprompt.sh
fi

source /usr/share/nvm/init-nvm.sh
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
NPM_CONFIG_PREFIX=~/.npm-global
PATH=$PATH:~/.npm-global/bin
PATH=$PATH:~/bin
