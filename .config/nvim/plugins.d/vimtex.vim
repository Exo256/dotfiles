Plug 'lervag/vimtex'

" Configuration
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif
