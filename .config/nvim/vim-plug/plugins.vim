" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
   
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-utils/vim-man'
   
   
    
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'

    Plug 'tpope/vim-sleuth'
    Plug 'editorconfig/editorconfig-vim'

    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    
    Plug 'mhinz/vim-startify'

    Plug 'https://github.com/itchyny/lightline.vim.git'
    
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

    Plug 'vim-syntastic/syntastic'


call plug#end()
