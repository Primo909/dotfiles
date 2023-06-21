filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd! BufWritePost $MYVIMRC source $MYVIMRC 
" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Turn on syntax highlighting.
syntax on



map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set tabstop=2
set softtabstop=2
set shiftwidth=2
set splitbelow splitright
" Replace all is aliased to S
nnoremap S :%s//g<Left><Left>
nnoremap <silent><C-t> :tabnew<CR>
" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number
set relativenumber
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
set wildmode=longest,list,full
" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

set clipboard=unnamedplus


call plug#begin("~/.vim/plugged")
"Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'lervag/vimtex'
"Plug 'matze/vim-tex-fold'
Plug 'preservim/nerdtree'
"Plug 'dpelle/vim-languagetool'
call plug#end()

"let g:tex_flavor = 'latex'
"set foldmethod=syntax
"set complete+=kspell
"map <F8>  :setlocal spell spelllang=de <return>
"map <F9>  :setlocal spell spelllang=en_us <return>
"map <F7>  :setlocal nospell <return>
map <F6> :NERDTreeToggle<CR>
"autocmd FileType tex map <F12> :w \| :! name=%; bash ~/Vorlagen/comp ${name::len-4}
"
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown
