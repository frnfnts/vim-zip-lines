function! zip_lines#ZipRange() range abort
    if a:firstline == a:lastline
        return
    endif
    let centerline = (a:firstline+a:lastline) / 2
    let upper_half = getline(a:firstline, centerline)
    let lower_half = getline(centerline+1, a:lastline)
    execute (centerline+1).";".a:lastline."d"
    for i in range(len(lower_half))
        call setline(a:firstline+i, upper_half[i] . lower_half[i])
    endfor
endfunction
