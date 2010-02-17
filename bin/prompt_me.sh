# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# old: PROMPT_COMMAND="PS1=$(jobs | grep -c 'Stopped' | prompt_me.pl)"
    prompt_me() {
        local NONE="\[\033[0m\]"    # unsets color to term's fg color
        
        # regular colors
        local cK="\[\033[0;30m\]"    # black
        local cR="\[\033[0;31m\]"    # red
        local cG="\[\033[0;32m\]"    # green
        local cY="\[\033[0;33m\]"    # yellow
        local cB="\[\033[0;34m\]"    # blue
        local cM="\[\033[0;35m\]"    # magenta
        local cC="\[\033[0;36m\]"    # cyan
        local cW="\[\033[0;37m\]"    # white
        
        # emphasized (bolded) colors
        local cKm="\[\033[1;30m\]"
        local cRm="\[\033[1;31m\]"
        local cGm="\[\033[1;32m\]"
        local cYm="\[\033[1;33m\]"
        local cBm="\[\033[1;34m\]"
        local cMm="\[\033[1;35m\]"
        local cCm="\[\033[1;36m\]"
        local cWm="\[\033[1;37m\]"
        p_time=`date +%H:%M`
        p_host="$cB\h"
        p_jobs=' '
        if [ `jobs|grep -c 'Stopped'` -gt 0 ]; then
            p_jobs="$cG|$cY\j"
        fi
        p_caret="$cG|>$NONE"
        title="\[\e]2;\u@\H: \w\a\]"
        export PS1="$title$cC$p_time $p_host$p_jobs$p_caret "
        history -a
    }
    
    PROMPT_COMMAND=prompt_me
