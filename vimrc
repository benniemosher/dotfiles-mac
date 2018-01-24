" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"

" go to first character of line
nmap 0 ^

" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>

set number                      " Display line numbers beside buffer
set nocompatible                " Don't maintain compatibilty with Vi.
set hidden                      " Allow buffer change w/o saving
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Run rspecs with Dispatch
let g:rspec_command = "Dispatch rspec {spec}"

" Ignore backups and swap files
set nobackup
set nowritebackup
set noswapfile
set history=50

call plug#begin()
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dispatch'
  Plug 'thoughtbot/vim-rspec'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()
