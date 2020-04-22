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
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'epilande/vim-react-snippets'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'thoughtbot/vim-rspec'
Plug 'jpo/vim-railscasts-theme'
Plug 'tpope/vim-endwise'
call plug#end()
set clipboard=unnamedplus
set number 
set encoding=utf-8

nnoremap <c-p> :GFiles<cr>
nnoremap <C-g> :NERDTreeToggle<CR>
tnoremap <C-[><C-[> <C-\><C-n>
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>
nnoremap ` :Files<CR>
nnoremap ; :Buffers<CR>

filetype plugin indent on 

set tabstop=4
set shiftwidth=4

let g:deoplete#enable_at_startup = 1
let g:rainbow_active = 1
syntax on 
colorscheme railscasts 

call deoplete#custom#option({
			\	'max_list': 20,
			\})

set nobackup
set nowritebackup
set noswapfile
