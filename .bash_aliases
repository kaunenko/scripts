# ~/.bash_aliases — useful Bash aliases for CentOS

# === Navigation and file management ===
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias mkdir='mkdir -pv'
alias rm='rm -i'       # Interactive remove — asks before deleting
alias cp='cp -i'       # Interactive copy
alias mv='mv -i'       # Interactive move
alias grep='grep --color=auto'  # Colored grep output

# === Git shortcuts ===
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gco='git checkout'
alias gb='git branch'
alias gcb='git checkout -b'
alias gundo='git reset --soft HEAD~1'  # Undo last commit, keep changes

# === Package management (CentOS) ===
alias update='sudo yum update -y'
alias install='sudo yum install -y'
alias remove='sudo yum remove -y'

# If you have dnf (CentOS 8+), you can switch to:
# alias update='sudo dnf update -y'
# alias install='sudo dnf install -y'
# alias remove='sudo dnf remove -y'

# === Python related ===
alias pipup='pip install --upgrade pip'
alias pi='pip install'
alias pif='pip freeze > requirements.txt'
alias piall='pip install -r requirements.txt'

# === Archives and compression ===
alias untar='tar -xvzf'

# === Network and processes ===
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias myip='curl ifconfig.me'

# === Disk and file usage ===
alias usage='du -h --max-depth=1'
alias top10='du -hs * | sort -rh | head -10'

# === Quick local server ===
alias serve='python3 -m http.server'

# === Reload bash configuration ===
alias reload='source ~/.bashrc'

# === Show PATH entries line by line ===
alias path='echo $PATH | tr ":" "\n"'

