" change the mapleader from \ to ,
let mapleader=","
nnoremap ; :



" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>



"It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. Also, undo buffers and marks are preserved while the buffer is open. This is an absolute must-have.
set hidden




"when you forgot to sudo before editing a file that requires root privileges (typically /etc/hosts). This lets you use w!! to do that after you opened the file already:
cmap w!! w !sudo tee % >/dev/null




set background=dark
set noswapfile
"Удаление лишних пробелов в конце строк, перед сохранением файла(прописываем в .vimrc):
au BufWritePre * silent g/\s\+$/s///




set number
set fileformat=unix
syntax enable
syntax on
set nocp


noremap <silent> <c-k> <C-W>k
noremap <silent> <c-j> <C-W>j
noremap <silent> <c-h> <C-W>h
noremap <silent> <c-l> <C-W>l

"Nightmare mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle setup
set nocompatible       " be iMproved, required
filetype off           " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


"репозитории на github
Plugin 'klen/python-mode'
Plugin 'sjl/gundo.vim'
Plugin 'mhinz/vim-startify'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'vim-scripts/sessionman.vim'
Plugin 'vim-scripts/SuperTab'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/The-NERD-Commenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/surround.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Rykka/riv.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bkad/CamelCaseMotion'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mhinz/vim-signify'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Vundle setup off
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"PEP8 - Python StyleGuide
set nowrap        " don't wrap lines
set expandtab
set textwidth=79
set colorcolumn=+1
set tabstop=8
set softtabstop=4
set shiftwidth=4  " number of spaces to use for autoindenting
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
"set foldmethod=marker
"set foldlevel=99




"Отступы между черточками, разделяющие окно редактора можно убрать так
set fillchars=stl:\ ,stlnc:\ ,vert:│



"
"FROM Jenyay
" Включаем фолдинг (сворачивание участков кода)
set foldenable

" Сворачивание по отступам
"set fdm=indent
" Сворачивание по синтаксису
set fdm=syntax
" Автоматическое открытие сверток при заходе в них
set foldopen=all
"Автоматическое переключение рабочей папки
set autochdir

" При создании нового файла *.py и *.pyw будут сразу добавлены два заголовка с
" путем до интерпретатора python и с указанием кодировки utf-8
"function! BufNewFile_PY()
"0put = '#!/usr/bin/env python'
"1put = '#-*- coding: utf-8 -*-'
"$put =
"$put =
"normal G
"endfunction

"autocmd BufNewFile *.py call BufNewFile_PY()
"autocmd BufNewFile *.pyw call BufNewFile_PY()

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

" размеры окна
"set lines=100
"set columns=150

"END From Jenyay
"



set backspace=indent,eol,start " allow backspacing over everything in insert mode
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep




nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>



set ofu=syntaxcomplete#Complete
let python_highlight_all = 1
let python_slow_sync = 1

"Startufy fix on "can't read viminfo"
set viminfo='100,n$HOME/.vim/files/info/viminfo


"Pythone-Mode
" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiple values "pep8,pyflakes,mcccabe"
" Choices are: pyflakes, pep8, mccabe, pylint, pep257

let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
" Run linter on the fly
let g:pymode_lint_onfly = 0
" Minimal height of pylint error window
let g:pymode_lint_minheight = 2
" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6

" Turn off autocompletion when typing a period
let g:pymode_rope_complete_on_dot = 0


"miniBufExpl
  map <Leader>mbe :MBEOpen<cr>
  map <Leader>mbc :MBEClose<cr>
  map <Leader>mbt :MBEToggle<cr>


" NerdTree настройки
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']




"Solarized
let g:solarized_termcolors=256
"0
let g:solarized_termtrans = 1
let g:solarized_bold =  1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_style = "dark"
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"
set t_Co=16
colorscheme solarized



"TagBar
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии




"TaskList
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 0
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Max_Submenu_Items = 25
let Tlist_Max_Tag_Length = 10
let Tlist_Process_File_Always = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Right_Window = 0
let Tlist_Use_SingleClick = 1
let Tlist_WinWidth = 25



map T :TaskList<CR>
"map P :TlistToggle<CR>



"RainbowParenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"Gundo
nnoremap <F6> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1
let g:gundo_preview_bottom = 1



"GVIM STUFF
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Monospace\ 12
set encoding=utf-8


"set statusline+=%{fugitive#statusline()}
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
"set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}


"pdb setting : insert pdb breakpoints
imap <F3> import ipdb; ipdb.set_trace(
au BufRead *.py nmap <F5> :!ipython2 %



"http://vk.com/club50185211
"Практически самая главная опция которая должна присутствовать в .vimrc у
"русскоговорящих Виммеров:
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>



"Чтобы изменять отступы строк используют клавиши > и < . Эти клавиши действуют
"и при визуальном выделении. Только при перемещении, блок теряет выделение.
"Восстановить выделение можно комбинацией gv. Но лучше добавить в .vimrc такой
"хак:
vnoremap < <gv
vnoremap > >gv



"После перехода с однорежимного текстового редактора, вы вероятно заметите, что
"по умолчанию, vim не переходит на новую строку когда курсор доходит до
"последнего символа в строке. Это можно исправить такой опцией в vimrc:
set whichwrap=<,>,[,],h,l
