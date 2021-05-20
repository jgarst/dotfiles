Dotfiles
========

This is a record of Jared's personal configuration files.  They come with some important caveats.

1) I am more interested in recording all my choices than in making a coherent system.
    My goal is to record every special feature of my development environment in this repo.
    Sometimes recording these choices is tricky configuration options is tricky, because theIt is important to me that I can record all the settings I adjust

    are not built for ease of use by other people.  If you see something in the files that you are interested in, I would suggest emailing me directly.


Color Scheme
============
My color scheme is transitioning from the [Tomorrow Night theme](https://github.com/ChrisKempson/Tomorrow-Theme) to a hodge podge of themes based around [harlequin](https://github.com/nielsmadan/harlequin) and Monokai.
Tomorrow Night is probably still my favorite theme, but I like the warm colors popping comments of harlequin when writing code.
I find it a little more relaxing to read, and agree with its contrast choices.
Because the terminal and other color signals have less context and structure than a programming language, I want their colors to be brighter have more contrast than harlequin.
I have chosen Monokai for these uses, as it has an overall temperature pretty close to harlequin, but tends to be brighter, and has more variations in the wild I can steal from.
The Colors I currently have set are:
* harlequin for vim and other text editing.
* Monokai for command line printing with bat, until I can recreate harlequin in tmTheme format.
* Monokai Soda, with the background adjusted to match harlequin for terminals and text editors.
* Tomorrow Night Blue for focused window manager components.
* Tomorrow Night for focused but inactive window manager components, for example the focused window on an inactive monitor screen.
* Tomorrow Night Eighties for unfocused window manager components.

I hope to replace the Tomorrow Night components when I get a chance.


Tools
=====

VSCode: While I tend to quietly resent electron apps, it seems like it has the best remote pair programming tools, so it is time for me to be on board.
    * It has bad and unstable XDG support, especially the part where the undocumented environment variable I use to fake support lumps the configuration file and the extension data in the same directory. See [VSCode Issue #3884](https://github.com/Microsoft/vscode/issues/3884)
    * I am using the aur based official binaries, instead of the package supported by pacman proper, because the code sharing extension uses unstable parts of the api which are not included by default yet.  The internet says this is solvable, but I haven't done it yet. See [Issue #9](https://github.com/jgarst/dotfiles/issues/9).


Vim Plugins
===========

Add vim plugins, or other git submodules, with
`home submodule add -f <repository> <relative/path/to/destination>
