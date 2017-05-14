" vim-sublime - A minimal Sublime Text - like vim experience bundle
"               http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts
" Updated by Dorian Neto (https://github.com/dorianneto)"

set shell=/bin/bash
set clipboard=unnamed

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ------Plugins-------
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'gcmt/breeze.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'posva/vim-vue'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-css-color'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'sekel/vim-vue-syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'

" Color Themes
Plugin 'colors'

call vundle#end()
colorscheme Monokai
filetype plugin indent on

""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

set autoread

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:·
set list

inoremap <C-U> <C-G>u<C-U>

set number
set hlsearch
set ignorecase
set smartcase

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" exit insert mode
inoremap <C-c> <Esc>

set completeopt=menuone,longest,preview

"
" Plugins config
"

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/vendor/*

" Ultisnip
" NOTE: <f1> otherwise it overrides <tab> forever
let g:UltiSnipsExpandTrigger="<f1>"
let g:UltiSnipsJumpForwardTrigger="<f1>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:did_UltiSnips_vim_after = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" Find
map <C-f> /

" indent / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <

" comment / decomment & normal comment behavior
vmap <C-/> gc

" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}

" Undo, Redo (broken)
nnoremap <C-z>  :undo<CR>
inoremap <C-z>  <Esc>:undo<CR>
nnoremap <C-y>  :redo<CR>
inoremap <C-y>  <Esc>:redo<CR>

" Buffers
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
nnoremap <silent> <C-PageUp>  :bprevious<CR>
inoremap <silent> <C-PageUp>  <Esc>:bprevious<CR>i
nnoremap <silent> <C-PageDown>  :bnext<CR>
inoremap <silent> <C-PageDown>  <Esc>:bnext<CR>i
nnoremap <silent> <C-t>  :enew<CR>
inoremap <silent> <C-t>  <Esc>:enew<CR>
nnoremap <silent> <C-w>  :bp <BAR> bd #<CR>
inoremap <silent> <C-w>  <Esc>:bp <BAR> bd #<CR>
nnoremap <silent> <C-b> :ls<CR>
inoremap <silent> <C-b> <Esc>:ls<CR>

" lazy ':'
map \ :

let mapleader = ','
nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>
noremap  <Leader>g :GitGutterToggle<CR>

" this machine config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" vim-multiple-cursors
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-S-d>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
imap <C-d>  <Esc>:call multiple_cursors#new("n", 0)<CR>
let g:multi_cursor_exit_from_insert_mode=1

" indentLine
let g:indentLine_char = '┆'

" vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']

" Delete line with CTRL-k
nnoremap <silent> <C-k>  dd
inoremap <silent> <C-k>  <Esc>ddi

" NERDTree
nnoremap <silent> <C-o> :NERDTreeTabsToggle<CR>
inoremap <silent> <C-o> <Esc>:NERDTreeTabsToggle<CR>

" Pane navigation
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

" Close current buffer pane with CTRL-q
nmap <silent> <C-q> :q<CR>
inoremap <silent> <C-q> <Esc>:q<CR>i

" CTRL-S to save, fix whitespace
noremap  <silent> <C-S> :update<CR>:FixWhitespace<CR>:update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>:FixWhitespace<CR>:update<CR>
inoremap <silent> <C-S> <Esc>:update<CR>:FixWhitespace<CR>:update<CR>

" Cut, Paste, Copy
vmap <C-x> <silent> d
vmap <C-v> <silent> p
imap <C-v> <silent> <Esc>vp
nmap <C-v> <silent> <Esc>vp
vmap <C-c> <silent> y
" FIXME: Yanks shortcut isn't working
nmap <C-i> <silent> :Yanks<CR>
imap <C-i> <silent> <Esc>:Yanks<CR>

" Disable the c key in normal mode
nnoremap c <NOP>

" Move words with CTRL-Arrow
nmap <silent> <C-Left> b
nmap <silent> <C-Right> w
nmap <silent> <C-Up> 0
nmap <silent> <C-Down> $

" FIXME: This is not working
" Move lines up/down with CTRL-SHIFT-Arrow
nmap <C-S-Up> :m-2<CR>
imap <C-S-Up> <Esc>:m-2<CR>
nmap <C-S-Down> :m+<CR>
imap <C-S-Down> <Esc>:m+<CR>


" Disable the EasyClip bindings, we just want it's yank panel
let g:EasyClipUseYankDefaults=0
let g:EasyClipUseCutDefaults=0
let g:EasyClipUsePasteDefaults=0
let g:EasyClipEnableBlackHoleRedirect=0
let g:EasyClipUsePasteToggleDefaults=0

" Text wrap simpler, then type the open tag or ',"
vmap <CS-w> S

" delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=8
endif
