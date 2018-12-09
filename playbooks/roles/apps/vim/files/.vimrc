" === Theming ===
colorscheme slate
set background=dark " Use a dark background


" === Editor preferences ===
syntax on
filetype plugin indent on
set backspace=2     " Fix backspace key behavior to work on older systems
set cursorline      " Add line beneath cursor
set noshowmode      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set number          " Turn on line numbers


" === Encoding / color support ===
set encoding=utf-8  " Force encoding to UTF-8 compliance
set laststatus=2    " Always display the statusline in all windows
set t_Co=256        " Set terminal color support to 256 colors (for Powerline)


" === Indentation preferences ===
set expandtab       " On pressing tab, insert four spaces
set shiftwidth=4    " When indenting with '>', use four spaces width
set showtabline=2   " Always display the tabline, even if there is only one tab
set smarttab        " On pressing tab, indent to previous line's indention
set tabstop=4       " Show existing tab with four spaces width


" === Text formatting preferences ===
set textwidth=80
set colorcolumn=81
set wrapscan


" === Custom file preferences ===

" AsciiDoc
autocmd FileType asciidoc setlocal textwidth=0 colorcolumn=0

" git commits
autocmd FileType gitcommit setlocal colorcolumn=73 softtabstop=4 tabstop=4

" HTML
autocmd FileType html setlocal textwidth=0 colorcolumn=0
autocmd FileType htmljinja setlocal textwidth=0 colorcolumn=0

" Java
autocmd FileType java setlocal textwidth=120 colorcolumn=121

" Markdown
autocmd FileType markdown setlocal textwidth=0 colorcolumn=0

" reStructuredText
autocmd FileType rst setlocal textwidth=0 colorcolumn=0

" YAML
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2


" === Plugin configuration ===
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.shtml' " vim-closetags
let g:airline#extensions#tabline#enabled = 1                " vim-airline
let g:airline_powerline_fonts = 1                           " vim-airline
let g:user_defined_snippets = ["/home/$USER/.vim/bundle/vim-snippets/snippets/*"]

" vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--ignore=W503"
let g:syntastic_rst_checkers = ['']

