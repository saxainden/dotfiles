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
    Plug 'rwxrob/vim-pandoc-syntax-simple'
    Plug 'arcticicestudio/nord-vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'itchyny/lightline.vim' 
    "Plug 'vifm/vifm.vim'
    Plug 'tpope/vim-fugitive'
    "Plug 'vim-scripts/AutoComplPop'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'godlygeek/tabular'
    Plug 'joshdick/onedark.vim'
    Plug 'romgrk/doom-one.vim'
    "Plug 'jremmen/vim-ripgrep'
    Plug 'kien/ctrlp.vim'
    Plug 'dhruvasagar/vim-table-mode'
    "Plug 'ycm-core/YouCompleteMe'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'gruvbox-community/gruvbox'
    Plug 'sickill/vim-monokai'
    Plug 'habamax/vim-godot'
    Plug 'scrooloose/nerdcommenter'
    "Starting to learn go
    Plug 'fatih/vim-go'
    Plug 'masukomi/vim-markdown-folding'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'editorconfig/editorconfig-vim'
call plug#end()
