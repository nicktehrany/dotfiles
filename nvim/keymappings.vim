" Remap default window movement
map <leader>h :wincmd h<CR>
map <leader>l :wincmd l<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>

" remap to close current buffer
map <leader>q :bd<CR>

" quickfix list movement
map <C-q> :copen<CR>
map <C-j> :cn<CR>
map <C-k> :cp<CR>

nnoremap <silent><Esc><Esc> :nohlsearch<CR>

" nnoremap d "_d
" vnoremap d "_d

nnoremap Y y$

" When going next center cursor and unfold after
nnoremap n nzzzv
nnoremap N Nzzzv

" Set undo break points in insert mode on punctation
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text in different modes
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <Esc>:m .+1<CR>i
inoremap <C-k> <Esc>:m .-2<CR>i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" substitution
nnoremap S :%s///g <Left><Left><Left><Left>
