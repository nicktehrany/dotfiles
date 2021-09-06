nnoremap <leader><tab> :BufferLineCycleNext<CR>
nnoremap <leader><S-tab> :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><mymap> :BufferLineMoveNext<CR>
nnoremap <silent><mymap> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

lua << EOF
require("bufferline").setup {
    options = {
        show_buffer_close_icons = false,
        show_close_icon = false
    },
    highlights = {
        fill = {
            guifg = '#282828',
            guibg = '#282828',
        }
    }
}
EOF