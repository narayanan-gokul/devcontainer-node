#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

get_git_base_directory() {
    git rev-parse --show-toplevel &> /dev/null
    status_code=$?
    if [ $status_code == 128 ]; then
        directory=${PWD##*/}
        if [ $PWD == "/home/${USER}" ]; then
            echo "~"
        else
            echo $directory
        fi
    else
        git_directory=$(git rev-parse --show-toplevel)
        echo ${git_directory##*/}
    fi
}

get_git_branch() {
    git branch --show-current &>/dev/null
    status_code=$?
    if [ $status_code == 128 ]; then
        echo ""
    else
        echo "$(git branch --show-current) "
    fi
}

export EDITOR="nvim"
export DOTFILES=$HOME/dotfiles


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tmux='tmux -u'

PS1="\[\033[0;30m\033[42m\]\h\[\033[0m\]:\[\033[38;5;037m\]\u\[\033[0m\] \[\033[38;5;216m\]\w\[\033[0m\]\n\[\033[38;5;203m\]\$(get_git_branch)\[\033[0m\]\[\033[38;5;194m\]> \[\033[0m\]"
