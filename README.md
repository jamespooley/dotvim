# dotvim

> <sup>**Use a single editor well.** The editor should be an extension of your hand; make sure your editor is configurable, extensible, and programmable. ([The Pragmatic Programmer](https://pragprog.com/the-pragmatic-programmer/extracts/tips))</sup>

I've yet to make the jump to [Neovim](https://neovim.io/), so this is still Vim 8-centric for the time being.

### Setup

Simply follow Vim hero Drew Neil's [instructions](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

#### Installing Environment on a New Machine

```bash
git clone http://github.com/jamespooley/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git git submodule init
git submodule update
```

#### Updating Bundled Plugin(s)

To upgrade a single plugin bundle:

```bash
cd ~/.vim/pack/bundle/start/delimitMate
git pull origin master
```

To upgrade all bundled plugins:

```bash
cd ~/.vim/pack/bundle/start
git submodule foreach git pull origin master
```

### Further Reading

In addition to the must-own (but not freely available)
[Practical Vim (2nd Edition)](https://pragprog.com/book/dnvim2/practical-vim-second-edition) and
[Modern Vim](https://pragprog.com/book/modvim/modern-vim)
books by Drew Neil, the following are free Vim resources that I've found helpful
when crafting my text editing environment.

* [Learn Vim for the First Time: A Tutorial and Primer](https://danielmiessler.com/study/vim/)
* [Vim Config Update: 2019 Edition](https://danielmiessler.com/blog/vim-configuration-update-2019-version/)
* [Vim: So Long Pathogen, Hello Native Package Loading](https://shapeshed.com/vim-packages/)
* [Synchronizing Plugins with git Submodules and Pathogen](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
* [Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
* [Vim and Python: A Match Made in Heaven](https://realpython.com/vim-and-python-a-match-made-in-heaven/)

#### Things I Need to Explore

* [Vim Chorded Key Mappings (vim-arpeggio)](https://www.youtube.com/watch?v=b9c30ZovKIo)
* [Vim Python IDE](https://github.com/jarolrod/vim-python-ide)
