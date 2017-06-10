" vim-sublime - A minimal Sublime Text - like vim experience bundle
"               http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts
" Updated by Dorian Neto (https://github.com/dorianneto)"

set shell=/bin/bash
set clipboard=unnamedplus

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ------Plugins-------
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'posva/vim-vue'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-syntastic/syntastic'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ap/vim-css-color'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'sekel/vim-vue-syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Raimondi/delimitMate'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'tpope/vim-repeat'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

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
set listchars=tab:¦\ ,trail:·
set list

"inoremap <C-U> <C-G>u<C-U>

set number
set hlsearch
set ignorecase
set smartcase

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

set completeopt=menuone,longest,preview

"
" Plugins config
"

" CtrlP
set wildignore+=*/.git/*,*/*.pyc,*/.hg/*,*/.svn/*,*/node_modules/*,*/vendor/*

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Find
map <C-f> /

" Capture SHIFT-Tab
set t_kB=^[[Z]]
map <Esc>[Z <S-Tab>

" Tab and SHIFT-Tab to indent/unindent
vnoremap <Tab> >>
vnoremap <S-Tab> <<
nnoremap <Tab> >>
nnoremap <S-Tab> <<
inoremap <Tab> >>
" This doesn't seem to be responding at all, check map!
inoremap <S-Tab> <Esc>v<<

" CTRL-SHIFT-p toggles command palette
vnoremap <C-]> :CtrlPCmdPalette<CR>
nnoremap <C-]> :CtrlPCmdPalette<CR>
inoremap <C-]> <Esc>:CtrlPCmdPalette<CR>i

" comment / decomment & normal comment behavior
vmap <C-/> :TComment<CR>
imap <C-/> <Esc>:TComment<CR>i

" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}

" Undo, Redo
nnoremap <C-z>  :undo<CR>
inoremap <C-z>  <Esc>:undo<CR>
nnoremap <C-y>  :redo<CR>
inoremap <C-y>  <Esc>:redo<CR>

" Buffers
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1

" Move through buffers with CTRL-PageUp/Down
nnoremap <silent> <C-PageUp>  :bprevious<CR>
inoremap <silent> <C-PageUp>  <Esc>:bprevious<CR>i
nnoremap <silent> <C-PageDown>  :bnext<CR>
inoremap <silent> <C-PageDown>  <Esc>:bnext<CR>i

" CTRL-t opens new buffer
nnoremap <silent> <C-t>  :enew<CR>
inoremap <silent> <C-t>  <Esc>:enew<CR>

" Close buffer with CTRL-w
nnoremap <silent> <C-w>  :bd<CR>
inoremap <silent> <C-w>  <Esc>:bd<CR>

" CTRL-b shows buffer list
nnoremap <silent> <C-b> :ls<CR>
inoremap <silent> <C-b> <Esc>:ls<CR>

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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['jshint']

" Stop vim-json from hiding double quotes
let g:vim_json_syntax_conceal = 0

" Delete line with CTRL-k
nnoremap <silent> <C-k>  dd
inoremap <silent> <C-k>  <Esc>ddi

" NERDTree
nnoremap <silent> <C-o> :NERDTreeTabsToggle<CR>
inoremap <silent> <C-o> <Esc>:NERDTreeTabsToggle<CR>
vnoremap <silent> <C-o> :NERDTreeTabsToggle<CR>

" Pane navigation
" Disabled because I'm running out of key combos lol
" May have to start taking modes seriously!
"nmap <C-S-Up> :wincmd k<CR>
"nmap <C-S-Down> :wincmd j<CR>
"nmap <C-S-Left> :wincmd h<CR>
"nmap <C-S-Right> :wincmd l<CR>

" CTRL-S to save, fix whitespace
noremap  <silent> <C-s> :FixWhitespace<CR>:update<CR>
vnoremap <silent> <C-s> <C-C>:FixWhitespace<CR>:update<CR>
inoremap <silent> <C-s> <Esc>:FixWhitespace<CR>:update<CR>

" Cut, Paste, Copy
vmap <C-x> d
vnoremap <x> d
vmap <C-v> p
vnoremap <c> y
imap <C-v> <Esc>pi
nmap <C-v> <Esc>p
vmap <C-c> y

" Disable the c/p keys in normal mode
nnoremap c <NOP>
nnoremap o <NOP>

" Move to next word with CTRL-Arrow
nmap <silent> <C-Left> b
nmap <silent> <C-Right> w

" Move cursor up/down 5 lines with CTRL-Up/Down
nmap <silent> <C-Up> 5k
nmap <silent> <C-Down> 5j
imap <silent> <C-Up> <Esc>5k
imap <silent> <C-Down> <Esc>5j

" Move lines up/down with CTRL-ALT-Arrow
nmap <silent> <C-A-Up> :m-2<CR>
imap <silent> <C-A-Up> <Esc>:m-2<CR>
nmap <silent> <C-A-Down> :m+<CR>
imap <silent> <C-A-Down> <Esc>:m+<CR>

" CTRL-SHIFT-f to format code
nnoremap <C-S-f> :Autoformat<CR>
inoremap <C-S-f> <Esc>:Autoformat<CR>

" Text wrap simpler, then type the open tag or ',"
vnoremap <silent> <F9> :set invwrap<CR>
nnoremap <silent> <F9> :set invwrap<CR>
inoremap <silent> <F9> <Esc>:set invwrap<CR>i

nnoremap <silent><S-k> O<Esc>

" delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


" Highlight column
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=8
endif

" Syntastic panel toggle
function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    " Nothing was closed, open syntastic error location panel
    Errors
  endif
endfunction

" CTRL-E to toggle Syntastic error panel
nnoremap <silent> <C-e> :call ToggleErrors()<CR>

set cursorline
highlight CursorLine guibg=237
highlight Cursor ctermfg=15
highlight SpecialKey ctermbg=235;

" Change cursor line color when using insert mode
autocmd InsertEnter * highlight CursorLine ctermbg=16
autocmd InsertLeave * highlight CursorLine ctermbg=237;


