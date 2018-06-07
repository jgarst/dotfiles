'''
python utilities for using offlineimap
'''
from subprocess import check_output

CMD = ['pass', 'fastmail/mutt']


def get_pass():
    '''Get fastmail password for the pass password manager.'''
    return check_output(CMD).splitlines()[0]
