set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

inoremap <silent> jj <ESC>

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " NeoBundle 設定
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: neobundle の設定を.gvimrcに書かないこと！

 " ここに追加したいプラグインを追加します。 
NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'Shougo/vimproc'
NeoBundle 'tpope/vim-rails'

 call neobundle#end()

 " required:
 filetype plugin indent on

 " if there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
