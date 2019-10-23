"""" Enable Vundle: vim plugin manager

" required before Vundle initialization
set nocompatible        " disable compatibility mode with vi
filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'

Plugin 'Solarized' " http://ethanschoonover.com/solarized/vim-colors-solarized

Plugin 'vimwiki/vimwiki'

" Track the engine.
Plugin 'SirVer/ultisnips'

Plugin 'godlygeek/tabular'

" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

call vundle#end()
  
let g:vimwiki_list = [{'path': '~/notes/docs', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_list = [{'path': '~/union/collective_agreement_v2/docs', 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_table_mappings = 0

" map <leader>wc <Plug>VimwikiToggleListItem
" map <leader>wd <Plug>VimwikiMakeDiaryNote
" map <leader>wg <Plug>VimwikiDiaryGenerateLinks
" map <Leader>wD <Plug>VimwikiDeleteLink
" map <Leader>n <Plug>VimwikiNextLink
" map <Leader>p <Plug>VimwikiPrevLink
     
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk


"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/

set background=dark
let g:solarized_termcolors = 16 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
" colorscheme solarized      " good colorschemes: murphy, slate, molokai, badwolf, solarized
colorscheme solarized      " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on


"""" Tab settings

set tabstop=2           " number of spaces per <TAB>
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=2        " set a <TAB> key-press equal to 4 spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :rightbelow vnew <C-R>=expand("%:p:h") . '/'<CR>

"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
" set background=light    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim
