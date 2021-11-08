nnoremap <C-mf> :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-p> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <C-u> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-j> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-k> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-n> :lua require("harpoon.ui").nav_file(4)<CR>
