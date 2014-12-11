Welcome to the test wiki!

```
[admin@VM_220_21_centos ~]$ cat .bash_profile 
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export LANG="zh_CN.UTF-8"
export PATH
```

```
[admin@VM_220_21_centos ~]$ cat .vimrc 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
```