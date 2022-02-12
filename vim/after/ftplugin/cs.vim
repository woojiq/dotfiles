" ftplugin/cs.vim

" ===== MAPPING =====
" 
" Save and compile
nnoremap <leader>c :w<CR> :!dotnet build --no-restore<CR>
" Execute
nnoremap <leader>e :wincmd l<CR> <C-w>:q!<CR> :vert term ++cols=40 dotnet bin/Debug/net6.0/%:p:h:t.dll<CR>
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
