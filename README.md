# ⌨️ dotvim

> **Use a single editor well.** The editor should be an extension of your
> hand; make sure your editor is configurable, extensible, and programmable
>
> --- [The Pragmatic Programmer](https://pragprog.com/the-pragmatic-programmer/extracts/tips)

Vim is damn near the top of my favorite pieces of software ever written. I've yet
to make the jump to [Neovim](https://neovim.io/), so this is still Vim 8-centric
for the time being.  Similarly, I've yet to move to
[`minpac`](http://vimcasts.org/episodes/minpac/) as my package manager.


### Setup

Simply follow Vim hero Drew Neil's [instructions](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/):

#### Installing Environment on a New Machine

```bash
$ git clone http://github.com/jamespooley/dotvim.git
$ cd dotvim
$ ln -s vimrc ~/.vimrc
$ git submodule init
$ git submodule update
```

To use this config with Neovim:

```bash
$ sudo apt-get install neovim
$ sudo apt-get install python3-neovim
$ vim ~/.config/nvim/init.vim
```

Add these links to Neovim's `init.vim` file:

```bash
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
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
* [Vimcasts.org](http://vimcasts.org/episodes/)
* [Turning Vim into an R IDE](https://www.freecodecamp.org/news/turning-vim-into-an-r-ide-cd9602e8c217/)
* [Seven Habits of Effective Text Editing](https://www.moolenaar.net/habits.html)
* [Understanding Vim's Jump List](https://kadekillary.work/post/vim-jumplist/)
* [Vim's Absolute, Relative, and Hybrid Line Numbers](https://jeffkreeftmeijer.com/vim-number/)
* [git Submodule Tutorial](https://git.wiki.kernel.org/index.php/GitSubmoduleTutorial)
* [Simple Vim Session Management: Part 1](https://dockyard.com/blog/2018/06/01/simple-vim-session-management-part-1)
* [Simple Vim Session Management: Part 2](https://dockyard.com/blog/2019/06/25/simple-vim-session-management-part-2)
* [Cool Vim Feature: Sessions!](https://jvns.ca/blog/2017/09/10/vim-sessions/)
* [Sessions: The Vim Feature No One Talks About!](https://hackernoon.com/sessions-the-vim-feature-no-one-talks-about-1c9cfa4d52d7)
* [Vim Text Objects: The Definitive Guide](https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/)
* [Editing Remote Files in Vim with SSH](https://gist.github.com/sloanlance/f481b7b8ffc0bfa3f46a1c942c7e7b78)

#### Things I Need to Explore

* [Vim Chorded Key Mappings (vim-arpeggio)](https://www.youtube.com/watch?v=b9c30ZovKIo)
* [Vim Python IDE](https://github.com/jarolrod/vim-python-ide)
* [`vim-cellmode`](https://github.com/julienr/vim-cellmode)
* [Idiomatic `vimrc`](https://github.com/romainl/idiomatic-vimrc)
* [How Can I Fix "Missing" Syntax Highlighting for Python Keywords such as `self`?](https://vi.stackexchange.com/questions/8772/how-can-i-fix-missing-syntax-highlighting-for-python-keywords-such-as-self)
* [A Complete Guide to Setting Up Neovim for Python Development on Linux](https://jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/)
* [256 Colors in Vim](https://vim.fandom.com/wiki/256_colors_in_vim)
* [Consistent Terminal Colors with 16-ANSI-Color Vim Themes](https://jeffkreeftmeijer.com/vim-16-color/)
* [https://www.reddit.com/r/vim/](https://www.reddit.com/r/vim/)
* [How to Compile Vim for Use with `pyenv` and `vim-pyenv`](https://rillabs.com/posts/how-to-compile-vim-for-use-with-pyenv-and-vim-pyenv)
* [Make Vim Detect `pipenv`-Based Python Environment](https://duseev.com/articles/vim-python-pipenv/)
* [My Python Development Setup](https://medium.com/@smoothml/my-python-development-setup-bbbe3715a474)
* [Comparing Buffers with `vimdiff`](http://vimcasts.org/episodes/comparing-buffers-with-vimdiff/)
* [Poet-v](https://github.com/petobens/poet-v)
* [Distraction-Free Writing with Vim](https://www.hamvocke.com/blog/distraction-free-writing/)
* [Editing Remote Files with Vim](https://dev.to/jovica/editing-remote-files-with-vim-4p9j)
* [Use `vim-dadbod` to Query Databases](https://habamax.github.io/2019/09/02/use-vim-dadbod-to-query-databases.html)
* [So Long Pathogen, Hello Native Package Loading](https://shapeshed.com/vim-packages/)
* [Vim Sessions](https://medium.com/vim-drops/vim-sessions-50756b2c603a)
