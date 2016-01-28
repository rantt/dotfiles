set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-rails'
" Plugin 'git://github.com/ap/vim-css-color.git'
Plugin 'The-NERD-tree'
Plugin 'Solarized' " http://ethanschoonover.com/solarized/vim-colors-solarized
Plugin 'git://github.com/rstacruz/sparkup.git'
Plugin 'EasyMotion'
Plugin 'git://github.com/chrisbra/Colorizer.git'
Plugin 'snipMate'
Plugin 'jade.vim'
" Plugin 'git://github.com/marijnh/tern_for_vim.git' "for use with jsctags
" npm install -g git://github.com/ramitos/jsctags.git

let g:colorizer_auto_filetype='css,html,js'



" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on


"  Solarized Settings
syntax enable
" set background=light
set background=dark
colorscheme solarized

augroup myfiletypes

" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal path+=lib
augroup END

"  Set Working Dir to Current Dir
set autochdir

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


" NERDTree
map <C-n> :NERDTreeToggle<CR>

" EasyMotion press <Leader><Leader>w
" python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")

" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
