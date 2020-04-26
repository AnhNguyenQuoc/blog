call plug#begin()
" Plug 'roxma/nvim-completion-manager'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'roxma/ncm-rct-complete'
" Plug 'davidhalter/jedi'
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else 
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'fishbullet/deoplete-ruby'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'epilande/vim-react-snippets'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'jpo/vim-railscasts-theme'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
call plug#end()
set clipboard=unnamedplus
set number 
set encoding=utf-8

nnoremap <C-p> :GFiles<CR>
nnoremap <C-g> :NERDTreeToggle<CR>
" Normal mode in ternimal
tnoremap <C-[><C-[> <C-\><C-n>
"Shortcut split screen
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>
" Shortcut to File and Buffers
nnoremap ` :Files<CR>
nnoremap ; :Buffers<CR>

" Set indent 
filetype plugin indent on 

set tabstop=4
set shiftwidth=4

let g:rainbow_active = 1

let g:deoplete#enable_at_startup = 1

syntax on 
colorscheme railscasts 

call deoplete#custom#option({
			\	'max_list': 20,
			\})

" Set no backup file 
set nobackup
set nowritebackup
set noswapfile

" Multi select
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
