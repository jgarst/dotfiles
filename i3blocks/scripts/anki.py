#!/usr/bin/env python
'''Print number of cards due.'''

from pathlib import Path

DB = Path('$XDG_DATA_HOME', 'Anki2', 'User 1', 'collection.anki2')

# due date is relative to collection creation date
# this sql snippet gets the offset of cards due today
'''
WITH today(offset) AS (
    SELECT julianday(date('now')) - julianday(date(crt, 'unixepoch')) FROM col
)
SELECT COUNT(*) FROM cards
WHERE type == 2 AND due <= (SELECT offset FROM today);
'''

print(0)
