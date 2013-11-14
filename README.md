Dotfiles for OS X
==================
Gentoo Linux 用 dotfiles。対象プログラムは

* Vim
* Vimperator
* Git

追加の操作を行う必要があるプログラムは

* Vim
* Git

環境移行時に行うこと
--------------------
1. 以下を実行して、ホームディレクトリに dotfiles へのシンボリックリンクを配置する。
    
    ```bash
    # clone したディレクトリで
    ln -s `pwd`/_vimrc ~/.vimrc
    ln -s `pwd`/_gvimrc ~/.gvimrc
    ln -s `pwd`/_vim ~/.vim
    ln -s `pwd`/_vimperatorrc ~/.vimperatorrc
    ln -s `pwd`/_gitignore ~/.gitignore
    ```

2. .gitconfig の設定。gitconfig.sh を `FIXME` の指示通りに修正して、実行する。
    
    ```bash
    # clone したディレクトリで
    ./gitconfig.sh
    ```

3. Vim の設定。

    1. Vim を起動して `NeoBundleInstall` を実行させる。
    2. vimproc の設定。以下を実行する。

        ```bash
        cd ~/.vim/bundle/vimproc
        make -f make_unix.mak
        ```
