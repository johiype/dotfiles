" This dotfile belongs under a user's home directory ~/.vimrc
" 
" On Windows, create a symlink from .vimrc to ~/_vimrc

" I found many of the options from Mathias Bynens' GitHub repo: https://github.com/mathiasbynens/dotfiles/blob/main/.vimrc#L56

" Add plugin for commenting capability
packadd comment

" Use the Solarized Dark theme
set background=dark

"colorscheme solarized
" let g:solarized_termtrans=1

" Lines
set number

" show file name on bottom
set laststatus=2

" Highlight current line
set cursorline
set cursorlineopt=number

" Highlight dynamically as pattern is typed
set incsearch

set clipboard=unnamedplus

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Show the current mode
set showmode

set showcmd

" Show the filename in the window titlebar
set title


"--------------------------------------------------------

" Search
set hlsearch
set ignorecase

" Customize the active match under the cursor (e.g., Black text on Orange background)
highlight CurSearch ctermbg=214 ctermfg=16 guibg=#ffaf00 guifg=#000000

" Style the remaining (inactive) search matches (e.g., Dark Grey background)
highlight Search ctermbg=242 ctermfg=15 guibg=#6c6c6c guifg=#ffffff


"--------------------------------------------------------


" Syntax Highligthing
syntax on


" Ctrl+Backspace key to delete entire word backward
inoremap <C-BS> <C-\><C-o>db

" Ctrl+Delete key to delete entire word forward
inoremap <C-Delete> <C-\><C-o>dw
