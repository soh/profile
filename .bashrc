if [ "$PS1" ]; then
#     PATH=~/bin:/opt/local/bin:/sw/bin:/sw/sbin:/usr/local/bin:"${PATH}":/usr/local/mysql/bin
    PATH=~/bin:~/bin/drush:/opt/local/bin:/usr/local/bin:/usr/local/sbin:"${PATH}":/opt/local/lib/mysql5/bin:/opt/local/lib/postgresql83/bin
    export MANPATH=/sw/share/man:/opt/local/share/man:/usr/share/man:/usr/local/mysql/man:/usr/X11R6/man:/usr/local/man

    shopt -s histappend
    export HISTCONTROL=erasedups
    export HISTSIZE=100000
    export HISTIGNORE="&:l:la:[bf]g*:exit:clear"  
    export CLICOLOR=1
    export FTP_PASSIVE=1
    export EDITOR=/opt/local/bin/vim
    export RANDFILE=/dev/random
    export CVSIGNORE='*.swp'
    export PERL5_USERLIB=/Users/soh/Library/Perl
    export DISPLAY=:0.0

    export TEST_SERVER=rancid
    export TEST_SERVER_WWW_ROOT=/var/www/rancid.raan.net-ssl/
    export TEST_SERVER_PERL_LIB=/usr/local/lib/perl/

    export HTTPD_BIN_PATH=/opt/local/apache2/bin/httpd
    export HTTPD_MODULE_PATH=/opt/local/apache2/modules
    export HTTPD_PORT=8080

    export SCREENDIR=~/.screen/

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    set -o vi
    bind -m vi-insert "\C-l":clear-screen


    alias screennp='screen -c ~/.screenrc_newproject'
    alias Pwd='pwd -P'

    alias vim6=/usr/bin/vim

    alias lists='cd ~/Documents/lists;vim -S .session -S .vimrc'

    alias bpe='vim ~/.bashrc'
    alias bpl='source ~/.bashrc'
    alias bh='vim ~/.bash_history'

    alias vimrc='vim ~/.vimrc'
    alias v=vim
    alias htconf='vim /etc/httpd/users/soh.conf'

    alias l='ls -lAh'
    alias lt='ls -lAhrt'
    alias lS='ls -lAhrS'
    alias la='ls -lAh'
    alias ll='ls -lh'
    alias lagos='ls -laAFhoS'
    alias cdz='cd ~/dev/z'
    alias cdp='cd ~/public_html'
    alias cdr='cd ~/dev/z/ruby'

    alias cap1="`which cap` _1.4.2_"

    alias perlsum='vim ~/bin/perlsum.pl'

    alias fps='ps axw | grep'
    alias top='top -o cpu'
    alias val='vim /var/log/httpd/error_log'

    alias talbanana6000='tail -f /var/log/httpd/error/banana6000.raan.net'
    alias talblog='tail -f /var/log/httpd/error/blog.dev'
    alias talvalidop='tail -f /var/log/httpd/error/validop.dev'
    alias taltheamazingscorn='tail -f /var/log/httpd/error/theamazingscorn.dev'
    alias talcoffeeplant='tail -f /var/log/httpd/error/coffeeplant'
    alias talvalidapp='tail -f /var/log/httpd/error/validapp.dev'
    alias talmoviemadness='tail -f /var/log/httpd/error/moviemadness.dev'
    alias talgreengables='tail -f /var/log/httpd/error/greengables'
    alias talgobiodiesel='tail -f /var/log/httpd/error/gobiodiesel'
    alias talemc='tail -f /var/log/httpd/error/elementalclinic-current'
    alias talemcsimple='tail -f /var/log/httpd/error/elementalclinic-simple'
    alias talemcsimple='tail -f /var/log/httpd/error/elementalclinic-simple'
    alias talhomestreet='tail -f /var/log/httpd/error/elementalclinic-homestreet'
    alias taljetcat='tail -f /opt/local/apache2/logs/error/jetcat.elementalclinic.dev.log'

    alias emclog='sudo chown www:admin /var/log/elementalclinic/*.log;sudo chmod 775 /var/log/elementalclinic/*.log'

    alias cl='clear;ls -lAh'

    alias vmail='vim ~/tmp/mail.txt'
    alias omail='open ~/tmp/mail.txt'

    alias cvsUp='cvs update -dPA'

    alias 2vim='vim -R -'
    alias sqlite3='sqlite3 -column -header'

    alias mozt='moz --tab';
    alias mozw='moz --window';

    alias ace='cd /opt/local/apache2/conf; make edit'
    alias apr='sudo /opt/local/apache2/bin/apachectl -k restart ; fps httpd'
    alias aps='sudo /opt/local/apache2/bin/apachectl -k start ; fps httpd'
    alias apS='sudo /opt/local/apache2/bin/apachectl -k stop'
    alias apt='/opt/local/apache2/bin/apachectl configtest'

    alias updatedb='sudo /usr/libexec/locate.updatedb'

    #alias duh='du -h'
    #alias dus='du -hs'
    #alias duss='du -s * | sort -nr'
    alias dusk='du -sk *|sort -nr'
    alias dush='du -skh *|sort -nr'

    alias hep='vim ~/public_html/help/index.html'

    alias cwt='cp ~/dev/local/www/template.html template.html'
    alias ewt='vim ~/dev/local/www/template.html'

    alias pg='ping google.com'
    alias tg='traceroute google.com'

# perl stuff
    alias pmvim=_pm_vim
    alias pmless=_pm_less
    alias pmcd=_pm_cd
    _pm_vim() { vim -R `perldoc -l $*`; }
    _pm_less() { less `perldoc -l $*`; }
    _pm_cd() {
        PERL='print "hello\n\n"';
        perl -e 'eval shift' $PERL;
        cd `perl -e '$_=shift;$_=\`perldoc -l $_\`;s/(\w+\.pm)$//;print' $*`;
        ls -lAh `perl -e '$_=shift;$_=\`perldoc -l $_\`;s/(\w+\.pm)$//;print $1' $*`;
    }

    export PROVE_SWITCHES="-l lib" 

#   functional aliasii
    alias cdl=_cd_ls
    alias mkcd=_mkdir_cd
    alias grep2vim=_grep2vim
    alias grepsvn=_grepsvn
    alias grepecs=_grepecs
    alias tal=_tail_apache_log

    _cd_ls() { cd $*; ls -lAh; }
    _mkdir_cd() { mkdir $*; cd $*; }
    _grep2vim() { grep $* *| vim -R -; }
    _grepsvn() { grep -rI $* * | grep -v "\.svn"; }
    _grepecs() { grep -rI $* t/5* lib/eleMentalClinic/ECS/*.pm lib/eleMentalClinic/Financial/*.pm | grep -v "\.svn"; }
    _tail_apache_log() { tail -f /var/log/httpd/error/$*; }

#alias grep='grep --color'

    export PERL5LIB=$HOME/Library/Perl
    PERL_SITE=`perl -MConfig -e 'print $Config{sitelib}'`
    PERL_ARCH=`perl -MConfig -e 'print $Config{archlib}'`
    PERL_SITE_ARCH=`perl -MConfig -e 'print $Config{sitearch}'`
    alias cdps='cd $PERL_SITE'
    alias cdpa='cd $PERL_ARCH'
    alias cdpsa='cd $PERL_SITE_ARCH'
    alias cdpl='cd ~/Library/Perl'

    alias cpan='sudo perl -MCPAN -e shell'

    export PERLDOC_PAGER='less -isrf'

# gpg
    GPG_TTY=`tty`
    export GPG_TTY

# slash stuff
    alias cdorgs='cd ~/clients/n4n/news4neighbors/plugins/Orgs'

# mac stuff
    alias prefs='open ~/Library/Preferences/.GlobalPreferences.plist'
    alias ads='vim ~/Documents/self/web/adblock.css'
    alias battinfo='ioreg -l -w 0 | grep IOBatteryInfo'

# remote ssh
    alias rancid='ssh -t rancid'
    alias rrancid='ssh -t rancid.raan.net'

# remote ssh
    alias omutt='ssh -t oliver mutt'
    alias Omutt='ssh -t Oliver mutt'

#    alias ostunnel='kps ; ssh -fN oolon-tunnels'
    alias ostunnel='ssh -fN oolon-tunnels'
    alias Oliver_music_tunnel='ssh -fN Oliver-music-tunnel'
    alias osirc='kps ; ssh -fN oolon-tunnels ; open ~/Applications/Colloquy.app'

# version control
    alias sdv='svn diff | vim -R -'
    alias svs="date;svn status | sort | ack -v '^X ' | ack '^ ?. '"
    alias svu="date;svn up"
    alias svq="date;svn status | ack '\?'"
    alias svc='date;svn status | ack ^C'
    alias svsu="date;svn -u status | ack '^ ?. '"
    alias svnup='date;svn up'

# git
    export EMAIL=randall@opensourcery.com
    alias gits='git status'

# rails
    alias gll='gem list --local'

    export CVS_RSH=ssh
    export PGDATA=/usr/local/pgsql/data

    export PYTHONPATH=/Library/Python/2.3/site-packages/
    alias olim=/System/Library/Frameworks/Python.framework/Versions/2.3/bin/offlineimap

# projects
#    alias P='make -f ~/bin/Projects $1 $2'
#    alias eP='vim ~/bin/Projects'

    alias pj='make -f .Project $1 $2'

# cdd
    alias cdd='source `which cdd.sh` cd'
    alias cd1='cd ../'
    alias cd2='cd ../../'
    alias cd3='cd ../../../'
    alias cd4='cd ../../../../'
    alias cd5='cd ../../../../../'
    alias cd6='cd ../../../../../../'
    alias cd7='cd ../../../../../../../'
    alias cd8='cd ../../../../../../../../'
    alias cd9='cd ../../../../../../../../../'

# pbcopy, needed for screen
# pbcopy_server.sh &

# ack
    export ACK_COLOR_MATCH="bold red"
    set grepprg=ack\ -a

    . ~/bin/prompt_me.sh
    if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi
fi

