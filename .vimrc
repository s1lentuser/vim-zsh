:syntax on
:set number
:filetype plugin indent on
:set ts=2 sts=2 sw=2 et si


call plug#begin()


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'

call plug#end()

 " use <tab> for trigger completion and navigate to the next complete item
  function! CheckBackspace() abort
   let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
 
  inoremap <silent><expr> <Tab>
        \ coc#pum#visible() ? coc#pum#next(1) :
        \ CheckBackspace() ? "\<Tab>" :
        \ coc#refresh()


"NerdTreeFocus shortcut
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

"gruvbox theme

set termguicolors
colorscheme gruvbox
