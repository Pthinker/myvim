" Not compatible with old vi
set nocompatible

" Set window title
set title

" Auto detect file types and thus can do indentation accordingly (e.g. bash)
filetype plugin on 
filetype indent on 

" Enable syntax highlighting
syntax on

" Use 256 color in terminal in order to get best views of most scheme
set t_Co=256
"set scheme=

" Turn off error beep
set noerrorbells
set visualbell
set t_vb=

" Show current position
set ruler

" Autoread a file when it is changed from the outside
set autoread

" Ignore case when no captial letter is present
set ignorecase
set smartcase

" Highlight search matches
set hlsearch
" Display search matches as you type
set incsearch

" Show matching braces
set showmatch

" expand tabs to spaces
set expandtab
" Indent width
set shiftwidth=4
" Tap width
set tabstop=4
" Automatically add indentation
set autoindent
" Smart indentation
set smartindent

" Command history
set history=100

" Do not create backup files
set nobackup

" Only do line wrapping when I do 'gq' commands
set tw=80
set fo-=t

" Auto jump to last editing position

function! ResCur()
	if line("'\"") <= line("$")
		normal! g`"
		return 1
	endif
endfunction
				
augroup resCur
	autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END
