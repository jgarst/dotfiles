# instantiate machine specific environment variables
localenv="${ZDOTDIR}/`hostname`.zshenv"

if [ -f "$localenv" ]
then
    source "$localenv"
fi
