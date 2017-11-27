set nocompatible              " be iMproved, required
filetype off                  " required
set runtimepath+=~/.vim/plugged/vim-airline/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhartington/oceanic-next'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax enable
let g:ycm_confirm_extra_conf = 0
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='oceanicnext'
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

"Leader for ycm
let mapleader=","
nnoremap ,gt :YcmCompleter GoTo<CR>

" Mutt Settings
au BufRead /tmp/mutt-* set tw=72 

" Jump to the last line when a file is opened
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
if has('nvim')
	let g:python_host_prog = '/home/heiko/.vim/nvim2/bin/python'
	let g:python3_host_prog = '/home/heiko/.vim/nvim3/bin/python'
	Plugin 'Shougo/deoplete.nvim'
	Plugin 'donRaphaco/neotex'
	Plugin 'davidhalter/jedi-vim'
	Plugin 'Chiel92/vim-autoformat'
	call deoplete#enable()
	let g:neotex_delay=2000
	set clipboard=unnamedplus
	tnoremap <Esc> <C-\><C-n>
	noremap <F3> :Autoformat<CR>
endif

let g:python_host_skip_check=1
map <F2> :NERDTreeToggle<CR>
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Easier buffer navigation
nnoremap <C-b> :bprevious<CR>
nnoremap <C-n> :bnext<CR>

" Save session
nnoremap <F5> :mksession .vim_session<CR>
nnoremap <F9> :source .vim_session<CR>
