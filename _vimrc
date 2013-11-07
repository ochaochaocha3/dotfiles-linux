" vim: filetype=vim

" タブ・インデント
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" 表示
set wrap
set showcmd
set number
set ruler
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set hlsearch "検索結果のハイライト。消すときは :nohl で。
" □や○があってもカーソル位置がずれないようにする
set ambiwidth=double

" 文字コード
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin
set nobomb
nnoremap ,U :set encoding=utf-8<CR>
nnoremap ,E :set encoding=euc-jp<CR>
nnoremap ,S :set encoding=cp932<CR>

" j、k ではカーソルを表示行で移動する。物理行移動は <C-n>、<C-p>。
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap j gj
nnoremap k gk

" クリップボードを使用可能にする
set clipboard=unnamed

" カレントディレクトリ移動
command! CD call s:CDToFileDir()

function! s:CDToFileDir()
    lcd %:p:h
    pwd
endfunction

" neobundle.vim によるプラグイン管理
if has('vim_starting')
    set nocompatible " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
" 
" eregex.vim
NeoBundle 'othree/eregex.vim'
nnoremap / :M/
nnoremap ? :M?
nnoremap ,/ /
nnoremap ,? ?

" vim-qfreplace
NeoBundle 'thinca/vim-qfreplace'

" html5.vim
NeoBundle 'othree/html5.vim'

" vim-css3-syntax
NeoBundle 'hail2u/vim-css3-syntax'

" css_color.vim
NeoBundle 'css_color.vim'

" scss-syntax.vim
NeoBundle 'cakebaker/scss-syntax.vim'

" JavaScript-syntax
NeoBundle 'JavaScript-syntax'

" vim-javascript
NeoBundle 'pangloss/vim-javascript'

" mediawiki.vim
NeoBundle 'vim-scripts/mediawiki.vim'

filetype plugin indent on " Required!

" Installation check.
NeoBundleCheck

" ここまで：neobundle.vim によるプラグイン管理