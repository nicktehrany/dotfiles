nnoremap <A-m> :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-s> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <C-y> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-u> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-f> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-i> :lua require("harpoon.ui").nav_file(4)<CR>
