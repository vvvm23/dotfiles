nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j

" fix last spelling error
imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" find and replace
nmap S :%s/

nmap <C-g> :Goyo<CR>

map <C-_> <plug>NERDCommenterToggle
