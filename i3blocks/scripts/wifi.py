#!/usr/bin/env python
'''Print wireless strength.'''

import os
from pathlib import Path

INTERFACE = os.getenv('BLOCK_INSTANCE', 'wlp58s0')
LINE = ''

with open(Path('/', 'proc', 'net', 'wireless'), 'r') as wireless:
    for line in wireless:
        if line.startswith(INTERFACE):
            LINE = line
            break

if LINE != '':
    STRENGTH = int(float(LINE.split()[2]) * 100 / 70)
    print(f'{STRENGTH:3d}%')
else:
    print('XXXX')
