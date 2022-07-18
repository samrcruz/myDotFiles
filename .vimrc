call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-vinegar'
call plug#end()
syntax on


let mapleader = ","							"The default leader is \, update it to ,"
set relativenumber
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set t_CO=256
set showmode




"----------------PLUGINS--------------------"



" NerdTree settings
nmap <C-f> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeHijackNetrw = 0





"CtrlP
set runtimepath^=/Users/samuelcruz/Desktop/dotFiles/bundle/ctrlp.vim
nmap <S-Tab> :CtrlP<CR>
let g:ctrlp_extensions = ['buffertag']
nmap <S-r> :CtrlPBufTag<cr>	
nmap <S-q> :CtrlPMRUFiles<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,result:30'




"---------------SPLIT MANAGEMENT------------"


set splitbelow
set splitright


nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"-------------SEARCHING-------------------"
set hlsearch
set incsearch
"-------------MAPPINGS-------------------"

"edit vimrc file"
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>f :tag<space>
nmap <Leader>, :!ctags -R<cr>




"------------AUTOMATIC COMMANDS---------"

"reload vimrc file after edit"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





"Notes
" - 'zz' center the line where to cursor is located
" - 'ctrl+] go to the method declaration 'ctrl+6' go back to the method usage
