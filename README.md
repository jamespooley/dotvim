# dotvim

I've yet to make the jump to [Neovim](https://neovim.io/), so this is still Vim 8-centric for the time being.

### Inital Setup

Simply follow Vim hero Drew Neil's [instructions](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

```bash
git clone http://github.com/jamespooley/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git git submodule init
git submodule update
```

### Further Reading

* [Learn Vim for the First Time: A Tutorial and Primer](https://danielmiessler.com/study/vim/)
* [Vim Config Update: 2019 Edition](https://danielmiessler.com/blog/vim-configuration-update-2019-version/)
* [Vim: So Long Pathogen, Hello Native Package Loading](https://shapeshed.com/vim-packages/)
* [Synchronizing Plugins with git Submodules and Pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
* [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
