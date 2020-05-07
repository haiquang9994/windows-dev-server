# Start SSH Agent
#----------------------------

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
alias comi="composer install -vvv --prefer-dist"
alias comu="composer update -vvv --prefer-dist"
# alias ls="ls --color -hX"
alias ls="ls --color=auto"
alias l="ls"
alias ll="l -al"
alias cmd="cmd.exe"
alias ..="cd .."
alias c="code ."
alias pnedu="cd /d/Developer/www/phuongnam/pnedu"
alias duhoc="cd /d/Developer/www/phuongnam/duhoc"
alias gmax="git update-index --chmod=+x"
alias gmdx="git update-index --chmod=-x"
