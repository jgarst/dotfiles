=====
Tools
=====


.. _rclone-site: https://rclone.org/

rclone
======
`rclone <rclone-site_>`__ manages multiple enterprise storage services.
For example, copy all media of one type from Google Drive to Dropbox,
or sync a local folder to multiple services.


.. _tarsnap-site: https://www.tarsnap.com/

tarsnap
=======
`tarsnap <tarsnap-site_>`__ is a unixy incremental backup utility.

Used in a small script named ``backup``.


.. _dead-man's-snitch-site: https://deadmanssnitch.com/

Dead Man's Snitch
=================
`Dead Man's Snitch <dead-man's-snitch-site_>`__ is an external service that
alerts when it is not periodically messaged, for use with periodic jobs.

Used in ``backup``.


.. _atuin-site: https://github.com/ellie/atuin

Atuin
=====
`Atuin <atuin-site_>`__ is utility that replaces the shell history text file
with a sqlite database.
I have reservations about moving away from plain text, but sqlite seems stable
enough, I have had some problems with corruption of the history file, and I
don't expect to have anything else consume the history file.
I am not using Atuin's ability to sync history between machines, as I do not yet
trust it's ability to keep safe any passwords I accidentally enter into history.

Bound to ``Ctrl - r`` and ``↑`` in the command prompt.


.. _mpv-site: https://mpv.io/

mpv
===
`mpv <mpv-site_>`__ is my preferred video player, and enabled gpu acceleration
by default.
This is officially unwise, but in practice my inputs are basically always
trusted, and my older machines are struggling to play videos without it.

Aliased to ``video``.


.. _htop-site: https://htop.dev/

htop
====
`htop <htop-site_>`__ is an old reliable for inquires about resources, and seems
to have found new maintainers.

Aliased to ``top``.


.. _dust-site: https://github.com/bootandy/dust

dust
====
`dust <dust-site_>`__ is a command line utility to present disk usage.
I find it more usable than du.

Aliased to ``du``.


.. _delta-site: https://github.com/dandavison/delta

delta
=====
`delta <delta-site_>`__ is a diff presentation utility with nicer colors and language 
specific highlighting.

Aliased to ``diff`` and used in git configuration.


.. _bat-site: https://github.com/sharkdp/bat

bat
===
`bat <bat-site_>`__ is a pager and replacement for cat.
Replacing cat is excessive, but having syntax highlighting when I am peeking
into files is pretty nice.

Aliased to ``cat``.


.. _exa-site: https://the.exa.website/

exa
===
`exa <exa-site_>`__ is a file lister and replacement for ls.
I do not actually need to replace ls, and recognize that doing so is excessive,
but exa is in the same vein as other rust tools that I am enjoying,
and I am ok with making bad decisions on my personal computer.

Aliased to ``ls``.


.. _plocate-site: https://plocate.sesse.net/

plocate
=======
`plocate <plocate-site_>`__ is a drop in locate replacement that claims to be faster.
Faster locate is always nice.

Aliased to ``locate``.


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

Aliased to ``pyr``.


.. _black-site: https://github.com/psf/black

black
=====
`black <black-site_>`__ is an opinionated python formatter.
Though I am happy to commit to using standard black for public projects, I am
unduly annoyed by the line limit of 88, and have set it to 80 by default for my
personal projects, most of which are throw away.

Vim formats on write with black.
