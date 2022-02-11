" ftplugin/cpp.vim

" ===== MAPPING =====
" 
" Save and compile
nnoremap <leader>c :w <bar> !g++ -std=c++17 % -W -o %:r<CR>
" Execute
nnoremap <leader>e <C-w>o:vertical terminal ++cols=30 %:p:r<CR>
" Save and compile + execute
nmap <leader>r <leader>c<leader>e



" ===== OTHER =====
"
" If the split is vertical, a new window appears to the right
setlocal splitright
" Insert extra level of indentation in some C-cases
setlocal cindent 
" Turn hybrid line numbers on
set number relativenumber
" Disable the show of line numbers in Terminal
autocmd TerminalOpen * setlocal nonumber norelativenumber
