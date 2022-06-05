call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()
syntax on


set relativenumber

" NerdTree settings
nmap <C-f> :NERDTreeToggle<CR>
