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

" vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
