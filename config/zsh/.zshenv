# instantiate machine specific environment variables
localenv="${ZDOTDIR}/`/usr/bin/hostname`.zshenv"

if [ -f "$localenv" ]
then
    source "$localenv"
fi
