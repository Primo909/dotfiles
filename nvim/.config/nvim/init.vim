call plug#begin("~/.vim/plugged")
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

tnoremap <Esc> <C-\><C-n>
:set splitright
nnoremap <Leader>v :vsplit \| terminal<CR> " leader+v for vertical terminal window
nnoremap <Leader>b :botright split \| terminal<CR> " leader+b for bottom terminal window

lua require("toggleterm").setup{}
nnoremap <leader>t <cmd>ToggleTerm direction=vertical size=50<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"save vimrc on write
"autocmd! BufWritePost $MYVIMRC source $MYVIMRC 
set nocompatible
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
"set shortmess+=I
"
set number
set relativenumber
set laststatus=2
"
set backspace=indent,eol,start
set ignorecase
set smartcase
set wildmode=longest,list,full
set incsearch
"
nmap Q <Nop> "'Q' in normal mode enters Ex mode. You almost never want this.
set noerrorbells visualbell t_vb=
set mouse+=a
set clipboard=unnamedplus
