set nocompatible	" be iMproved, required
filetype off		" required

set number		" add line numbers

" Powerline config

syntax on		" syntax highlighting

"-----------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDtree
Plugin 'scrooloose/nerdtree'

" vim-airline: lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tagbar: A class outline viewer for vim
Plugin 'majutsushi/tagbar'

" yapf: A formatter for Python files
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"----------------------------------------------------------

" Shortcuts
map <F2> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <C-Y> :call yapf#YAPF()<CR>
imap <C-Y> <c-o> :call yapf#YAPF()<CR>
