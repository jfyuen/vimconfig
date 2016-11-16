" Personal Settings
colorscheme intellij      " Load personnal colors

set enc=utf8
set fenc=utf8
set tabstop=4

let mapleader=","       " Define leader character
let maplocalleader=","  " May be different than mapleader

" Key map
noremap <C-H> :set invhlsearch<CR>      " Turn off match highlighting
noremap <C-K> :%s/\s*$//g<CR>           " Remove white spaces at EOL
noremap <C-S> :/\s*$<CR>                " Highlight white spaces at EOL
imap <C-SPACE> <C-X><C-N>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Visually select text, then search for it, forwards or backwards
vmap <silent> * :<C-U>let old_reg=@"<cr>
      \gvy/<C-R><C-R>=substitute(
      \escape(@", '\\/.*$^~[]'), "[ \t\n]\\+", '\\_s\\+', 'g')<CR><CR>
      \:let @"=old_reg<cr>
vmap <silent> # :<C-U>let old_reg=@"<cr>
      \gvy?<C-R><C-R>=substitute(
      \escape(@", '\\?.*$^~[]'), "[ \t\n]\\+", '\\_s\\+', 'g')<CR><CR>
      \:let @"=old_reg<cr>

" Autocompletion behaves like an IDE
set completeopt=longest,menuone 
"inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
"inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
"inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"


" FileTypes specific settings
if has("autocmd")
"  autocmd BufAdd,BufNewFile,BufRead * nested tab sball 
  autocmd BufNewFile,BufRead *.{tex,txt} setlocal tw=0
  autocmd BufNewFile,BufRead *.inc setlocal syn=php ft=php
endif " has("autocmd")

