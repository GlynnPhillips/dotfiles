
My Dotfiles
===========

These are my dotfiles. The bootstrapping process was copied from [Rowan's dotfiles][rowan].


Installing
----------

You'll need Git installed for this to work.

```sh
git clone https://github.com/rowanmanning/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && source bootstrap.sh
```


Updating
--------

To update .dotfiles, run the following:

```sh
cd ~/.dotfiles && source bootstrap.sh
```


Custom Commands
---------------

You can create an `~/.extra` file for things like git author name. Mine looks like this:

```sh
# Git credentials
GIT_AUTHOR_NAME="Glynn Phillips"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
```



[rowan]: https://github.com/rowanmanning/dotfiles/
