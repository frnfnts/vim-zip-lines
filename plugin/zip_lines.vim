if exists('g:loaded_zip_lines')
    echo "already loaded"
    finish
endif
let g:loaded_zip_lines = 1

command! -range ZipRange <line1>,<line2>call zip_lines#ZipRange()
vnoremap <silent><Plug>(zip-lines) :ZipRange<CR>
