Environment variables
---------------------
Environment variables are set with the PAM module (pam\_env(8)).
The pam\_environment file must be coppied to ${HOME}/.pam\_environment to take effect.


Console keyboard layout
-----------------------
The personal.map file describes a keyboard layout where Caps Lock is bound to Escape.
It is loaded in the `/etc/vconsole.conf` file, which can be set with `localectl set-keymap --no-convert personal`.
This does not change the key map in Wayland or X11.


Filesystems
-----------
- hidepid=2 

    hidepid prevents processies from looking at information they don't need.
    In fstab, replace the proc line with
    ```
    proc	/proc	proc	nosuid,nodev,noexec,hidepid=2,gid=proc	0	0
    ```

WiFi
----
The setup uses connman as a network manager, and wpa\_supplicant to authenticate to wireless networks.
I hope to replace wpa\_supplicant with iwd once scanning for networks is supported
