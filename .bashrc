export PS1='\[\e[1;31m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[1;33m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\]\[\e[35m\]`__git_ps1`\[\033[0m\]\n$ '

# Start SSH Agent
SSH_ENV="$HOME/.ssh/environment"
function run_ssh_env() {
    . "${SSH_ENV}" >/dev/null
}
function start_ssh_agent() {
    echo "Initializing new SSH agent..."
    ssh-agent | sed 's/^echo/#echo/' >"${SSH_ENV}"
    echo "Succeeded"
    chmod 600 "${SSH_ENV}"
    run_ssh_env
}
if [ -f "${SSH_ENV}" ]; then
    run_ssh_env
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ >/dev/null || {
        start_ssh_agent
    }
else
    start_ssh_agent
fi
# End SSH Agent

alias e="exit"
alias gits="git status"
alias gd="git diff"
alias gs="git status"
alias gpl="git pull"
alias gps="git push"
alias gpp="gpl && gps"
alias cm="git commit -m"
alias cma="git commit -am"
alias cmaa="git add -A && cm"
alias fn="cd /d/Server/nginx/vhosts"
alias fw="cd /d/Developer/www"
alias comi="composer install --prefer-dist"
alias comu="composer update --prefer-dist"
alias ls="ls --color -hX"
alias l="ls"
alias ll="l -al"
alias cmd="cmd.exe"
alias ..="cd .."
alias c="code ."
alias pnedu="cd /d/Developer/www/phuongnam/pnedu"
alias duhoc="cd /d/Developer/www/phuongnam/duhoc"
alias gmax="git update-index --chmod=+x"
alias gmdx="git update-index --chmod=-x"
