#!/bin/bash
sh_norm="\[\033[0m\]"
sh_black="\[\033[0;30m\]"
sh_bold_black="\[\033[0;30m\]\[\e[1m\]"
sh_darkgray="\[\033[1;30m\]"
sh_blue="\[\033[0;34m\]"
sh_light_blue="\[\033[1;34m\]"
sh_green="\[\033[0;32m\]"
sh_light_green="\[\033[1;32m\]"
sh_cyan="\[\033[0;36m\]"
sh_light_cyan="\[\033[1;36m\]"
sh_red="\[\033[0;31m\]"
sh_light_red="\[\033[1;31m\]"
sh_purple="\[\033[0;35m\]"
sh_light_purple="\[\033[1;35m\]"
sh_brown="\[\033[0;33m\]"
sh_yellow="\[\033[1;33m\]"
sh_light_gray="\[\033[0;37m\]"
sh_white="\[\033[1;37m\]"

if [ `id -u` -eq 0 ]; then
    USERCOLOR=${sh_light_red}
else
    USERCOLOR=${sh_light_blue}
fi

case `hostname` in
    *.local)
        HOSTCOLOR=${sh_green}
        ;;
    *)
        HOSTCOLOR=${sh_red}
        ;;
esac

export CLICOLOR=1
export LSCOLORS=ExGxcxdxCxegedabagacad
export PROMPT_COMMAND='if [ $? -ne 0 ];then ERROR_FLAG=1;else ERROR_FLAG=;fi; '
export PS1=${USERCOLOR}'\u'${sh_white}'@'${HOSTCOLOR}'\h'${sh_norm}' \w\n'${sh_norm}' ${ERROR_FLAG:+'${sh_light_red}'}${ERROR_FLAG:+'${sh_norm}'}$(__git_ps1 "(%s) ")$ '
