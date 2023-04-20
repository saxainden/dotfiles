" Call all plugins from a different file script.
source $HOME/.config/nvim/vim-plug/plugins.vim 

"syntax on
"set encoding=utf-8
"set tabstop=4 softtabstop=4
"set shiftwidth=4
"set expandtab
set guicursor=
set nowrap
set nohlsearch
set scrolloff=10
set mouse=a
set number relativenumber
set colorcolumn=80
set signcolumn=yes
set smartcase
set incsearch

" Example config in VimScript
"let g:tokyonight_style = "night"
"let g:tokyonight_italic_functions = 1
"let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

"" Change the "hint" color to the "orange" color, and make the "error" color bright red
"let g:tokyonight_colors = {
  "\ 'hint': 'orange',
  "\ 'error': '#ff0000'
"\ }


colorscheme tokyonight-night
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ }

"highlight ColorColumn ctermbg=blue guibg=lightgrey
highlight Comment cterm=italic gui=italic
highlight htmlBold gui=bold guifg=#af0000 ctermfg=green
highlight htmlItalic gui=italic guifg=#ff8700 ctermfg=blue
" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
let mapleader = " "

"noremap j h
"noremap k j
"noremap l k
"noremap ñ l

"noremap k gj
"noremap l gk

set nocompatible
if has("autocmd")
    filetype plugin indent on
endif

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :wrap
vmap <C-k> <plug>NERDCommenterToggle
nmap <C-k> <plug>NERDCommenterToggle
" Spellchecking and switch to spanish
map <F6> :setlocal spell! spelllang=es<CR>
map <F7> :set spelllang=es <CR>
" Turn on Goyo for readibility and writing
nmap <F10> :Goyo <CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Map control - backspace to delete work in insert mode
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db

vnoremap <C-c> "+y
vnoremap <C-S-v> "+P

"Markdown configuration
augroup MarkdownConfiguration
    autocmd BufNewFile,BufRead *.md set linebreak breakindent wrap
    autocmd BufNewFile,BufRead *.md nnoremap j gj
    autocmd BufNewFile,BufRead *.md nnoremap k gk
    "autocmd BufNewFile,BufRead *.md Goyo
augroup END


nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
