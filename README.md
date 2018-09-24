Environment variables
---------------------
Environment variables are set with the PAM module (pam_env(8)).
The pam_environment file must be coppied to ${HOME}/.pam_environment to take effect.


Console keyboard layout
-----------------------
The personal.map file describes a keyboard layout where **Caps Lock** is bound to **Escape**.
It is loaded in the `/etc/vconsole.conf` file, which can be set with `localectl set-keymap --no-convert personal`.
This does not change the key map in Wayland or X11.
