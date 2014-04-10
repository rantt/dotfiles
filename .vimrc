" Vundle Stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()



" Let Vundle manage Vundle (required)!
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'
Bundle 'edkolev/tmuxline.vim'

syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal path+=lib
augroup END

"  Set Working Dir to Current Dir
set autochdir


" execute pathogen#infect()
" filetype off
" syntax on
" filetype plugin indent on
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set tags=./tags;

" Use Ack instead of grep
set grepprg=ack

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :rightbelow vnew <C-R>=expand("%:p:h") . '/'<CR>
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")
