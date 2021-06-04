=====
Tools
=====


rclone | `homepage <https://rclone.org/>`__
===========================================
A tool to manage multiple enterprise storage services.
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
