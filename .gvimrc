""-----------------------------
"" new settings
" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


"my settings"
"------------------------------
" always set syntax highlight
syntax enable

"syntax on
"  if !exists("syntax_on")
"    syntax on
"  endif

" Always expand the syntax menu
if has("gui_running") && has("menu")
    let do_syntax_sel_menu = 1
    autocmd VimEnter * map {lhs} {rhs}
endif 


" Doxygen syntax highlighting
"let g:load_doxygen_syntax=1

" Set to auto read when a file is changed from the outside 
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

"set line numbers
set number

" We are good up to 99999 lines before column width changes
set numberwidth=5 

" Visual indicator of text/column width.  Like in Eclipse
set colorcolumn=80

" ubuntu specific: /usr/share/vim/vimcurrent/colors
"set color scheme
color pablo
"color desert
"color slate

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" disable blinking cursor 
set guicursor=a:blinkon0

"set font and size
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    "set guifont=Consolas:h11:cANSI
    set guifont=IBM3270:h8:cANSI
  endif
endif

set guifont=Monospace\ 6

"Switch on search pattern highlighting.
set hlsearch 

 " incremental search
set incsearch 

" highlight current line
" set cursorline 

" highlight current column
" set cursorcolumn

" wrap around search
set wrapscan 

" Hide the mouse pointer while typing
set mousehide 

" show cursor location ruler
set ruler 

" number of history entries
set history=1000 

" C style indentation
set cindent 

" Limit the width of text to 80
" set textwidth=80 

" set cursor BG color
highlight Cursor guibg=Red guifg=NONE 


" show tabs, to ensure we get them of files
" set list 

" show tabs and trailing
" set listchars=tab:>-,trail:- 

" Make command line two lines high
" set ch=3
set cmdheight=2

" each gvim session initializaiton will default to this many lines minus the
" command line
set lines=50

" Set the default line length
set columns=85


" highlighting strings inside C comments
" let c_comment_strings=1

" " No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" scroll bar at the left rather than the right:
set guioptions-=r
set guioptions+=l

" display the current mode and partially-typed commands in the status line:
set showmode

" show the command being typed
set showcmd


set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer


" enable filetype detection:
filetype on

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro  

" for CSS, also have things in braces indented:
autocmd FileType css set smartindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=2

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=4

""This setting will cause the cursor to very briefly jump to a
""brace/parenthese/bracket's "match" whenever you type a closing or opening
""brace/parenthese/bracket. I've had almost no mismatched-punctuation errors
""since I started using this setting.
set showmatch

""highlight empty white spaces
" highlight RedundantSpaces ctermbg=red guibg=Gray
" match RedundantSpaces /\s\+$\| \+\ze\t/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile



" --------------------
" TagList
" --------------------
" F5: Switch on/off TagList
nnoremap <silent> <F5> :TlistToggle<CR>
" TagListTagName - Used for tag names
"highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
"highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
"highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
"highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
"highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "order" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
"let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
"let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 45
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]

    " Automatically highlight the current tag
let Tlist_Auto_Highlight_Tag = 1

    " Automatically update the taglist window to display tags for newly
    " edited files
let Tlist_Auto_Update = 1



" -------------------
" NERD Tree
" -------------------
"let loaded_nerd_tree = 1  " :load tree dflt
"nnoremap <silent> <F3> :NERDTree<CR>

" Show the tree
nnoremap <silent> <F4> :NERDTreeToggle<CR> 

" nnoremap <silent> <F5> :TlistToggle<CR>


" Test to convert tabs to spaces
nnoremap <silent> <F3> :set expandtab<cr>:retab!<cr>:w!<cr>


" ------------------
" omnicompletion
" ------------------
filetype plugin on
set ofu=syntaxcomplete#Complete



" -------------------
" OmniCppComplete 
" -------------------
" -- required --
set nocp            " non vi compatible mode
filetype plugin on  " enable plugins

" -- optional --
" auto close options when exiting insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

" -- configs --
let OmniCpp_MayCompleteDot = 1      " autocomplete with .
let OmniCpp_MayCompleteArrow = 1    " autocomplete with ->
let OmniCpp_MayCompleteScope = 1    " autocomplete with ::
let OmniCpp_SelectFirstItem = 2     " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2     " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window

let OmniCpp_GlobalScopeSearch = 1   " Global scope search on/off
let OmniCpp_NamespaceSearch = 2     " search namespaces in the current file and included files

" -- ctags --
" map <ctrl>+F5 to generate ctags for current folder:
map <C-F5> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" map <C-F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" map <C-F5> :!(cd %:p:h;ctags *.[ch])&
"
" Read the local tag first then consult global tag when not found locally


" DEPRECATED - add current directory's generated tags file to available tags
" set tags+=./tags




" -------------------
" Cscope 
" -------------------
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif


" Delete trailing whitespaces at en of line automatically on w: 
 autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))



