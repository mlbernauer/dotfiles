call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'vimwiki/vimwiki'
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
colorscheme default
highlight clear
set t_Co=32
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set number

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki'}]
