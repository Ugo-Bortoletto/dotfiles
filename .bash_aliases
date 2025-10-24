# ALIAS GLOBALS
#alias rm='rm -iv'
#alias cp='cp -iv'
#alias mv='mv -iv'

# NAVIGATION
alias ll='ls -lhA --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias v='nvim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -p'
alias dfh='df -hT | grep -E "ext|btrfs|xfs"'
alias du1='du -h --max-depth=1'
alias grep='grep --color=auto'
alias ipa='ip -c a'
alias chmodx='chmod +x'


# PYTHON
alias python='python3'
alias py='python3'
alias .env='python3 -m venv .env'
alias venv='source .env/bin/activate'
alias pipup='pip install --upgrade pip setuptools wheel'


# GESTION DES PACKAGES
# Debian
# alias update="sudo apt update"
# alias upgrade="sudo apt full-upgrade"
# alias maj="sudo apt update && sudo apt full-upgrade -y"
# alias install="sudo apt install"

# Arch Linux
#alias update='sudo pacman -Sy'
#alias upgrade='sudo pacman -Syu'
#alias install='sudo pacman -S'
#alias remove='sudo pacman -Rns'
#alias search='pacman -Ss'
#alias info='pacman -Si'
#alias list='pacman -Qe'
#alias cleanup='sudo pacman -Rns $(pacman -Qdtq)'
#alias pkgfiles='pacman -Ql'

# -- AUR helpers
if command -v yay >/dev/null 2>&1; then
    alias yupdate='yay -Sy'
    alias yupgrade='yay -Syu'
    alias ysearch='yay -Ss'
    alias yinstall='yay -S'
    alias ycleanup='yay -Yc'
fi


# SYSTEME
#alias reboot='sudo systemctl reboot'
#alias shutdown='sudo systemctl poweroff'
#alias sleepnow='systemctl suspend'
#alias journal='sudo journalctl -xe'
#alias top10='ps -eo pid,comm,%mem,%cpu --sort=-%mem | head'
#alias myip='ip route get 1.1.1.1 | awk "{print \$7}"'
#alias ports='sudo ss -tulnp'


# AUTRES UTILITAIRES
alias untar='tar -xvf'
alias mktar='tar -cvf'
alias e='exit'
alias path='echo -e ${PATH//:/\\n}'
alias editbash='nvim ~/.bash_aliases && source ~/.bash_aliases'


# INFOS SYSTEME
alias infoos='neofetch || cat /etc/os-release'
alias uptime='uptime -p'
alias diskuse='du -sh * 2>/dev/null | sort -hr | head -n 20'
