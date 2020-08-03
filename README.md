# Angry Vim (╯°□°)╯︵ ┻━┻

![panzer.spngvg](panzer.png)

*Maciej Bak*  
*Swiss Institute of Bioinformatics*

Vim configuration which I use at work.  
(Supported on 64-bit Linux & macOS Catalina, Vim version > 8.1)

#### Setup:
```bash
cd $HOME
git clone https://github.com/AngryMaciek/angry-vim.git
bash angry-vim/setup.sh

# Native plugin managment has one drawback, helptags are not automatically re-generated. You can update them inside vim by using:
# :helptags ALL
# Also, safely ignore error of the following type:
# E152: Cannot open /opt/local/share/vim/vim81/doc/tags for writing
```

#### License:
MIT

#### Next Release:
* snippets & autocompletion
* syntax checking
* check plugins from Tim Pope's GitHub

---

test helptags?
test on Linux
colorchemes might not work on mac
install external color scheme (fork)
