source $VIM/vimrc

set ts=4
set sw=4
set expandtab
set smarttab
set hlsearch
set incsearch
set smartcase
set smartindent
set ruler
set showmatch
set number
set cursorline
set nowrap

colorscheme slate

map <left> :bp<cr>
map <right> :bn<cr>

" Toggle Taglist when installed
nnoremap <c-t> :TlistToggle<CR>

" Change to previous buffer and then the delete the buffer you just changed from; this helps with Tlist_Exit_OnlyWindow option below
nnoremap <leader>bd :bp<CR>:bd#<CR>

" Close vim when only the taglist window is left
let Tlist_Exit_OnlyWindow=1

" Sort taglist by name by default (not order). Use 's' to change sort in the taglist window
let Tlist_Sort_Type="name"

" Only expand tag section in taglist window from current file
let Tlist_File_Fold_Auto_Close=1
