echom "---- Load init ----"

" Ne pas oublier C-^> pour revenir au dernier buffer (permet de switcher)

let mapleader = ","
let localleader= "ù"

" No sé porque??
let g:polyglot_disabled = ['markdown']

" Plug {{{
call plug#begin(stdpath('data') . '/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'moll/vim-bbye'
	Plug 'simnalamburt/vim-mundo'
	Plug 'jiangmiao/auto-pairs'
	Plug 'simeji/winresizer'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'sheerun/vim-polyglot'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" FZF{{{
nnoremap <C-p> :FZF<CR>
"}}}

" Coc configuration
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" 
" Bbye - keep window when deleting a buffer
nnoremap <Leader>q :Bdelete<CR>
" }}}

" Vim-indent-guides{{{
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_soft_pattern = ' '
"}}}

" Configuration edition {{{
nnoremap ,ev :vsplit $MYVIMRC<cr>
nnoremap ,sev :w<cr>:source $MYVIMRC<cr>
" }}}

" Terminal https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd {{{
" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
" au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
" }}}  (terminal)

" Configuration options {{{

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark="medium"

" Show whitespaces
set list
set listchars=tab:→ ,trail:~,nbsp:␣

" Tab/spaces default
set shiftwidth=2
set softtabstop=2
set expandtab

" Don't fold on open
set foldlevel=99

" Completion on subfolder
set path+=**/*

" Completion ignore
set wildignore+=**/node_modules/**
set wildignore+=**/vendor/**
set wildignorecase

" Enable loading plugin on file type
filetype plugin on

" Displayall matching files when we tab complete
set wildmenu

" Show line numbers
set number

" Don't close buffer, just go in hidden
set hidden

" Case search
set ignorecase
set smartcase

" Add ruler on 80 columns
set colorcolumn=80

" Undo {{{
" save undo trees in files
set undofile
set undodir=~/.config/nvim/undo

" number of undo saved
set undolevels=10000 
" }}} (undo)
" }}} (options)

" Mapping {{{
" Recall
" 
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others. Collectively called "Lang-Arg" pseudo-mode)

" Disable commons nav to learn THE vim way {{{
inoremap <Esc> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap jk <Esc>
" }}} (commons)

" Windows
nnoremap <Leader>w <C-w>
nnoremap <C-w> <Nop>

" Esc much
nnoremap <Esc> :nohlsearch<Cr>

" HL remap more intuitive
nnoremap H 0
nnoremap L $

" Move up/down lines {{{
nnoremap Ï :m .+1<CR>==
nnoremap È :m .-2<CR>==
inoremap Ï <Esc>:m .+1<CR>==gi
inoremap È <Esc>:m .-2<CR>==gi
" }}} (lines)

" Changing case
nnoremap ,u g~iw

" Show next buffer
nnoremap <S-Tab> :bn<cr>

" Azerty stuff {{{
nmap ] $
" }}}
" }}} (mapping)

" Autocommand {{{
" save new file when created
augroup newfile
	autocmd BufNewFile * :write
augroup END

augroup filetype_php
	autocmd!
	autocmd FileType php iabbrev <buffer> fn "public function()<Cr>{<Cr><Cr>}<Cr>jkkkkkf(i"
	autocmd FileType php setlocal foldmethod=indent
augroup END

augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Abbrevations {{{
" Documentations
" help expr-quote
" help execute
" help normal
"
iabbrev heigth height
" }}} (abbrevations)

" Operator pending {{{
" In parentheses
onoremap in( :<c-u>normal! f(vi(<Cr>
" In curly braces
onoremap inc :<c-u>execute "normal! /{\r:nohlsearch\r\evi{"<Cr>
" }}}

" Tags{{{
command! MakeTags !ctags -R .
" }}}
