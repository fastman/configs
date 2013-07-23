"
" a moj pliczek vima ;]
"
" 
set nocompatible    " hmm ? :)
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'ruby.vim'
Bundle 'SuperTab-continued.'
Bundle 'ack.vim'
Bundle 'The-NERD-tree'
Bundle 'NERD_Tree-and-ack'
Bundle 'fugitive.vim'
Bundle 'surround.vim'
Bundle 'rails.vim'
Bundle 'AutoClose'
Bundle 'cpp.vim'
Bundle 'snippetsEmu'
Bundle 'Tabular'
" Bundle 'ada.vim'
Bundle 'Tagbar'
Bundle "pangloss/vim-javascript"
Bundle 'https://github.com/myhere/vim-nodejs-complete'
Bundle 'https://github.com/puppetlabs/puppet-syntax-vim'
""Bundle 'airblade/vim-gitgutter'


" rozpoznawanie typu pliku
" filetype plugin on
" filetype indent on 
filetype plugin indent on

set expandtab       " soft-tab"
set ts=4 			" szerokosc tabulacji :)
set sw=4 			" szerokosc automagicznego wciecia
set autoindent		" automatyczne wciecia
set ruler   		" pozycja kursora
set number			" numerowanie wierszy
set nowrap 			" niezwijaj linii
set cursorline

set showcmd " ???
set showmatch 
set hlsearch " zaznaczanie w szukajce
set laststatus=2 " pokazuj linie ze statusem
"set coursorline 	
" pokazuj zaznaczenie linii"
set nocompatible    " hmm ? :)


" kodowanie
set fileencodings=utf-8,latin2



set foldmethod=indent
set foldcolumn=3 	" kolumna z zaznaczonymi foldami
set foldminlines=2
set foldnestmax=10
set foldlevel=1 
set visualbell
set cc=80
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

set wildmenu " pokazanie (bash-like) przy tab 
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" colorscheme elflord " kolorki :]
" colorscheme desert " kolorki :]
" colorscheme eclipse " kolorki :]
" colorscheme zmrok " kolorki :]
colorscheme jellybeans " kolorki :]

" magiczne aliasy sobie porobilem dla zwijania :)
map <C-x> zo
map <C-z> zc
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <C-F> :NERDTreeFind<CR>
noremap <C-M> :set hlsearch! hlsearch?<CR>

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
