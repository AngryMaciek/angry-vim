# Angry Vim
*Maciej Bak*  
*Swiss Institute of Bioinformatics*

Vim configuration which I use at work.  
(Supported on 64-bit Linux, Vim version > 8.0)

#### Setup:
```bash
cd $HOME
git clone https://github.com/AngryMaciek/angry-vim.git
bash angry-vim/setup.sh
#
# Native plugin managment has one drawback, helptags are not automatically re-generated. You can update them by using:
# :helptags ALL
# Also, safely ignore the error:
# E152: Cannot open /opt/local/share/vim/vim81/doc/tags for writing
```

#### Next Release:
* snippets & autocompletion
* syntax checking
* check plugins from Tim Pope's GitHub

---

vim -u NONE -c "helptags ALL" -c q
how to test helptags?
