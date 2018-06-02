#!/usr/bin/env python
"""Get volume and muted status."""

from subprocess import Popen, PIPE

# --get-mute has nonzero return code when the result is false
# so we need Popen instead of check_output

with Popen(['pamixer', '--get-volume']
          ,stdout=PIPE
          ,universal_newlines=True
          ) as pvolume:
    VOLUME, VOL_ERR = pvolume.communicate(timeout=10)
    VOLUME = int(VOLUME)

with Popen(['pamixer', '--get-mute']
          ,stdout=PIPE
          ,universal_newlines=True
          ) as pmute:
    MUTE, MUTE_ERR = pmute.communicate(timeout=10)
    MUTE = MUTE.rstrip()

if MUTE == 'true':
    print(f'({VOLUME:3d})')
else:
    print(f' {VOLUME:3d} ')
