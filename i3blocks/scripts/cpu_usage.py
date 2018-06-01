#! /usr/bin/env python
'''Return a string with the load for each cpu.'''

from subprocess import Popen, PIPE
import json


CMD = ['mpstat'
      ,'-o', 'JSON'  # output JSON
      ,'-P', 'ALL'   # stats for each cpu
      ,'1'           # average over 1 second
      , '1'            # run once
      ]

with Popen(CMD, stdout=PIPE) as mpstat:
    mpstat.wait(timeout=10)
    JSON = json.load(mpstat.stdout)

CPU = JSON['sysstat']['hosts'][0]['statistics'][0]['cpu-load']

IDLE = [c['idle'] for c in CPU if int(c['cpu']) >= 0]
LOAD = [f'{(100 - i) / 100:.2f}' for i in IDLE]

print('  '.join(LOAD))
