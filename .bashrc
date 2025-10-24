#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTSIZE=5000
HISTFILESIZE=10000

shopt -s checkwinsize

PROMPT_COMMAND='BRANCH=$(git branch --show-current 2>/dev/null)';

#PS1='\u @ \h [\w] $(if [ -n "$BRANCH" ]; then echo "($BRANCH) ";fi)\n\$ '
PS1='${debian_chroot:+($debian_chroot)}\u @ \h [\w] $(if [ -n "$BRANCH" ]; then echo "($BRANCH) "; fi)\n\$ '

if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim
