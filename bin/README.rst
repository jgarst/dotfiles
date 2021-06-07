=====
Tools
=====


.. _rclone-site: https://rclone.org/

rclone
======
`rclone <rclone-site_>`__ manages multiple enterprise storage services.
For example, copy all media of one type from Google Drive to Dropbox,
or sync a local folder to multiple services.


tarsnap | `homepage <https://www.tarsnap.com/>`__
=================================================
A unixy incremental backup utility.
Uses `Dead Man's Snitch <dead man's snitch_>`__ to monitor backup cadence.


.. _dead man's snitch:

Dead Man's Snitch | `homepage <https://deadmanssnitch.com/>`__
==============================================================
An external service that alerts when it is not periodically messaged,
for use with periodic jobs.


Atuin | `homepage <https://github.com/ellie/atuin>`__
=====================================================
A utility that replaces the shell history text file with a sqlite database.
I have reservations about moving away from plain text, but sqlite seems stable
enough, I have had some problems with corruption of the history file, and I
don't expect to have anything else consume the history file.
I am not using Atuin's ability to sync history between machines, as I do not yet
trust it's ability to keep safe any passwords I accidentally enter into history.




tsc
===
I've aliased typescript to use strict defaults when called directly.


..
    I avoid aliasing my repl to py because Brett Cannon has claimed the name
    for his Python launcher.  https://github.com/brettcannon/python-launcher

.. _ptpython-site: https://github.com/prompt-toolkit/ptpython

ptpython
========
`ptpython <ptpython-site_>`__ combines prompt toolkit and jedi to create a
nicer Python REPL.
I alias ``ptpython`` to ``pyr``, so that I can set a default python REPL without
shadowing ``python``.


.. _black-site: https://github.com/psf/black

black
=====
`black <black-site_>`__ is an opinionated python formatter.
Though I am happy to commit to using standard black for public projects, I am
unduly annoyed by the line limit of 88, and have set it to 80 by default for my
personal projects, most of which are throw away.
