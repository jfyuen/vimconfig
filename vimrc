" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set autoindent          " Always set autoindenting on
set autowrite           " Automatically write buffer before special actions
set backspace=2         " Allow backspacing over everything in insert mode
set backup              " keep a backup file
set backupdir=$HOME/.tmp    " Keep file system clean : backup files
set dir=$HOME/.tmp          " Keep file system clean : swap files
set expandtab           " Tabs are evil
set formatprg=fmt       " My default format program
set guioptions-=T       " Turn off useless toolbar
set hidden              " Only hide invisible buffers
set history=50          " Keep 50 lines of command line history
set hlsearch            " Highlight matches
set ignorecase          " Ignore case
set incsearch           " Do incremental searching
set laststatus=2        " Always want statusline
set lazyredraw          " Don't display macro steps
set ruler               " Show the cursor position all the time
set shiftwidth=4        " Not too deep, not too shallow
set showcmd             " Display incomplete commands
set showmatch           " Show matching brackets
set smartcase           " Do not search everything
"set switchbuf=useopen,split     " Want better buffer handling in quickfix mode
set tabstop=8           " Set tabstop=8
set textwidth=0         " Don't wrap words
set visualbell          " No beeps - don't want to annoy neighbours
set whichwrap=<,>,[,]   " Allow to switch lines with arrows
set wrap                " Display all contents in window

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  syntax on
  filetype plugin indent on

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

endif " has("autocmd")

runtime /my/$USER.vim    " Load personnal settings

" vim:sw=2
