" ftplugin/cpp.vim

" ===== MAPPING =====
" 
" Save and compile
nnoremap <leader>c :w <bar> !g++ % -W -o %:r<CR><CR>
" Execute
nnoremap <leader>e <C-w>o:vertical terminal ++cols=30 %:p:r<CR>
" Save and compile + execute
nmap <leader>r <leader>c<leader>e



" ===== OTHER =====
"
" if the split is vertical, a new window appears to the right
setlocal splitright
" the width of the TAB character
setlocal tabstop=3
" size of indentation
setlocal shiftwidth=3
" insert extra level of indentation in some C-cases
setlocal cindent 
