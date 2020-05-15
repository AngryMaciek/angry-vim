# Vim configuration
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

Vim configuration which I use at work (supported on Linux, Vim version > 8.0).

#### Setup: 
```bash
cd $HOME
git clone https://github.com/AngryMaciek/custom-vim.git
mv .vimrc .vimrc_backup # backup current .vimrc
ln -s custom-vim/vimrc .vimrc # link new rcfile
# set monokai color theme:
mkdir -p .vim/colors
ln -s vim-monokai-master/colors/monokai.vim .vim/colors/monokai.vim
```

---

TODO:
* https://github.com/sirver/ultisnips
* https://github.com/vim-syntastic/syntastic
* https://github.com/vim-airline/vim-airline
* clean old rc