set nocompatible	" be iMproved, required
filetype off		" required

set encoding=utf-8
" Turn on syntax highlighting
syntax on

" Enable Powerline
set rtp+=/usr/local/home/bzhang/.local/lib/python3.6/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colors
set t_Co=256

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" used for command line completion
set wildmenu
set wildmode=list:longest,full

" To insert space characters whenever the tab key is pressed
set expandtab
" To control the number of space characters that will be inserted
" when the tab key is pressed
set tabstop=4
" To change the number of space characters inserted for indentation
set shiftwidth=4

" Show line numbers
set number

" Enable folding
set foldmethod=indent
set foldlevel=99

"------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" a code-completion engine for Vim
Plugin 'ycm-core/YouCompleteMe'

" NERDtree
Plugin 'scrooloose/nerdtree'

" Syntax checking hacks for vim
Plugin 'syntastic'


" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
"-----------------------------------------------------

" Shortcuts
map <F2> :NERDTreeToggle<CR>
