"let g:LanguageClient_serverCommands = {
"            \ 'python': ['~/.local/share/python2/bin/pyls'],
"            \ 'python3': ['~/.local/share/python3/bin/pyls'],
"            \ }
let g:LanguageClient_serverCommands = {
            \ 'python': ['~/.local/share/python3/bin/pyls'],
            \ }

let g:LanguageClient_autoStart = 1
set signcolumn=yes

nnoremap <silent> <A-CR> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> rh :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> rd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> rf :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> rr :call LanguageClient#textDocument_rename()<CR>
