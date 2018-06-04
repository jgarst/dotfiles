#!/usr/bin/env python
'''Print number of cards due.'''

from pathlib import Path
import sqlite3
import os

DB = Path(os.environ['XDG_DATA_HOME'], 'Anki2', 'User 1', 'collection.anki2')

# type 0 is new cards
# type 1 is learning cards
# type 2 is repeated cards
# due date is relative to collection creation date
DUE_QUERY = '''
WITH today(offset) AS (
    SELECT
        julianday(date('now', 'localtime'))
        - julianday(date(crt, 'unixepoch', 'localtime'))
    FROM col
)
SELECT COUNT(*) FROM cards
WHERE
    type == 0
    OR (type == 1 AND due <= strftime('%s', 'now'))
    OR (type == 2 AND due <= (SELECT offset FROM today))
;
'''

with sqlite3.connect(str(DB), timeout=10) as conn:
    with conn as cur:
        (DUE,) = cur.execute(DUE_QUERY).fetchone()

print(f'{DUE:2d}')
