syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
"set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set background=dark
set mouse=n

"for python

syntax enable
set ts=4
set autoindent
set expandtab
set cursorline
set showmatch
let python_highlight_all=1

"end here for python"



"for wrap
set nowrap
"set listchars=tab: ,nbsp:extends:>
"set list

"new
set relativenumber
set hlsearch


highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/wincent/terminus.git'
Plug 'https://github.com/alvan/vim-closetag.git'
Plug 'mbbill/undotree'
Plug 'https://github.com/907th/vim-auto-save.git'
Plug 'https://github.com/rhysd/vim-clang-format.git'
Plug '/home/scarface/vim-auto-save'
Plug 'https://github.com/vim-autoformat/vim-autoformat.git'
Plug 'https://github.com/nvie/vim-flake8'
Plug 'https://github.com/tell-k/vim-autopep8'
Plug 'https://github.com/artur-shaik/vim-javacomplete2.git'
Plug 'https://github.com/kiteco/vim-plugin.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/rakr/vim-one.git'
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'https://github.com/srcery-colors/srcery-vim.git'
Plug 'https://github.com/tomasr/molokai.git'
Plug 'https://github.com/jacoborus/tender.vim.git'
Plug 'https://github.com/dasch/vim-mocha.git'
Plug 'https://github.com/farmergreg/vim-lastplace.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/codota/TabNine.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://gist.github.com/2458e3b12beab63fb4589807875f749b.git'

"Make your vim/Newvim as smart as VScode
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Syntax highlighting for languages
Plug 'sheerun/vim-polyglot'

" Fzf is a general-purpose command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Python code formatter
Plug 'ambv/black'

" Vim-monokai-tasty color theme
Plug 'patstockwell/vim-monokai-tasty'



Plug 'https://github.com/vim-syntastic/syntastic.git'

call plug#end()

if executable('rg')
    let g:rg_derive_root='true'
endif


let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
" ag is fast enough that CtrlP donsn't need cache"
" let g:ctrlp_use_caching = 0
" let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow <CR>

nnoremap <leader>% :new<CR>
nnoremap <leader>" :botright vnew<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps  :Rg <space>
nnoremap <silent><Leader>+ :vertical resize +30 <CR>
nnoremap <silent><Leader>- :vertical resize -30 <CR>

nnoremap <silent><Leader>vv :resize +15 <CR>
nnoremap <silent><Leader>mm :resize -15 <CR>

nnoremap <silent><Leader>gd  :YcmCompleter GoTo<CR>
nnoremap <silent><Leader>gf  :YcmCompleter FixIt<CR>
nnoremap <silent><Leader>nn  :%s/^\n//gc <CR>
nnoremap <silent><Leader>nm  :ClangFormatAutoEnable <CR>
nnoremap <silent><Leader>_  :ClangFormat<CR>

nnoremap <silent><Leader>a :Vexplore<CR>
nnoremap <silent><Leader>R :NERDTree<CR>
nnoremap <silent><Leader>q :q<CR>
nnoremap <silent><Leader>w :w<CR>

nnoremap <silent><Leader>p :CtrlP<CR>
nnoremap <silent><Leader>b :CtrlPBuffer<CR>

nnoremap <silent><leader>f <C-f><CR>
nnoremap <silent><leader>b <C-b><CR>
nnoremap <silent><leader>r <C-r><CR>

noremap <silent><leader>; :set nohlsearch<CR>
noremap <silent><leader>s :AutoSaveToggle<CR>
nnoremap ; :
nnoremap : ;

noremap <silent><leader>1 :q!<CR>
nnoremap <F8> :PymodeLintAuto<CR>   



colorscheme gruvbox
"colorscheme elflord

let g:AutoPairsFlyMode=0
let g:AutoPairsShortcutBackInsert ='<M-b>'


set scrolloff=999
"nnoremap j jzz
"nnoremap k kzz


"auto close preview windo
autocmd CompleteDone * pclose





vnoremap K xKp`[V`]
vnoremap H <gv
vnoremap L >gv
vnoremap U xp`[V`]

"vmap <expr> <LEFT> DVP_Drag('left')
"vmap <expr> <RIGHT> DVP_Drag('right')
"vmap <expr> <DOWN> DVP_Drag('down')
"vmap <expr> <UP> DVP_Drag('up')


"source ~/.vim/plugged/c93b1bdc3d5df64a8bc29246adfa8c6c/python-run.vimrc
source ~/.vim/plugged/cpp.vim
source ~/.vim/plugged/2458e3b12beab63fb4589807875f749b/python-run.vimrc

"for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_checker = 1

"end here


source ~/.vim/plugged/syntastic/plugin/syntastic.vim
