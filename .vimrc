call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'vimwiki/vimwiki'
Plug 'jalvesaq/Nvim-R'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'aserebryakov/vim-todo-lists'
call plug#end()

" easyalign settings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" vim settings
autocmd BufRead,BufNewFile *.md,*.rmd setlocal nospell 
"colorscheme default
highlight clear
set t_Co=32

" convert tab to 4 space, autoindent 4 spaces
set expandtab
set tabstop=2
set shiftwidth=2

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki'}]
