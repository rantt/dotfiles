set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Gruvbox theme
Plugin 'morhetz/gruvbox'

Plugin 'ferrine/md-img-paste.vim'
Plugin 'vimwiki/vimwiki'

" open links in chrome
Bundle 'tyru/open-browser.vim'
" syntax highlight
Bundle 'tpope/vim-markdown'


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'mxw/vim-jsx'
Plugin 'junegunn/vim-easy-align'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'The-NERD-tree'
Plugin 'Solarized' " http://ethanschoonover.com/solarized/vim-colors-solarized
Plugin 'git://github.com/rstacruz/sparkup.git'
Plugin 'EasyMotion'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'


" Plugin 'git://github.com/chrisbra/Colorizer.git'
" Plugin 'snipMate'
" Plugin 'git://github.com/marijnh/tern_for_vim.git' "for use with jsctags
" npm install -g git://github.com/ramitos/jsctags.git

let g:colorizer_auto_filetype='css,html,js'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:airline#extensions#tabline#enabled = 1



" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

augroup myfiletypes
" Clear old autocmds in group
autocmd!
" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal path+=lib
augroup END


autocmd BufNewFile,BufRead *.jade set filetype=jade

"  Set Working Dir to Current Dir
set autochdir
"
"
" " execute pathogen#infect()
" " filetype off
" " syntax on
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


" NERDTree
map <C-n> :NERDTreeToggle<CR>

map <c-f> :call JsBeautify()<cr>
" nnoremap <c-h> $v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"  Solarized Settings
syntax enable
" set background=light
" set background=dark
" colorscheme solarized
" colorscheme monokai


" dark theme, options soft, medium, hard
" let g:gruvbox_contrast_dark = 'hard'

" light theme, options soft, medium, hard
" let g:gruvbox_contrast_light='soft'

" let g:gruvbox_contrast_light='soft'

colorscheme gruvbox

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

autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'
let g:vimwiki_list = [{'path': '~/notes/docs', 'syntax': 'markdown', 'ext': '.md'}]

filetype plugin on
set omnifunc=syntaxcomplete#Complete
