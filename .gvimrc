"Author : muniswara reddy
"date : 10/9/07
"
syntax on

execute pathogen#infect()

:browse confirm wa

"ooooo   1: important
set nocompatible
"set cpoption=aABceFs
"set rtp=
"set im     " Insertmode : use Insert mode as the default mode


"ooooo   2: Moving around, searching patterns
set whichwrap=<,>
" I want the searches to wrap around
set wrapscan
set incsearch    " show highlight for partly searched commands
set magic       
set ignorecase
set smartcase    " ignore ignorecase when pattern contains uppercase
"set define ^\(#\s*define\|[a-z]*\s*const\s*[a-z]*\)

"ooooo   3: Tags
set tags =./tags,~/.vim/tags/*vim,./**/tags
set tags=~/.vim/tags/KAILASH_rtl.vim
"set tags =~/.vim/tags/KAILASH_Assertions.vim,~/.vim/tags/KAILASH_rtl.vim
"ooooooooo   4: Displaying text
set scr=10   "scroll 10 lines for CTRL-U and CTRL-D
"set nowrap  " long lines wrap
set showbreak=\ \ \ \ \ \ \ \
set ch=3   "cmdheight=3 ; number of lines used for the command-line

"One more useful command is set list: 
"It shows the end of the line with a $ 
"This way it is easy to recognize whether the last character is a tab or a blank space.
"set list   " good to use

set nolist  "To avoid viewing the special character used in list

"      One more useful command is 
"set lcs=eol:$ "listchars=eol:$    end of the line$  tab 
"      can be shown with a character of my choice, this way it 
"      is easy to recognize whether the last character is a tab 
"      or a blank space.


set linebreak
set nu         " Display line numbers
"set lcs=<comma separated list of options>

"ooooo   5: Syntax and highlighting
set background=dark
set hls      "hlsearch 

"ooooo   6: Multiple windows
set noea          "donot make all windows the same size when adding/removing windows
set wh=1         "winheight=20 ; set current window to be atleast 20 lines large
set helpheight=0
set scb           " Scroll bind the windows

"ooooo   7: Terminal
set ttyfast      " terminal connection is fast
set notf         " nottybuiltin : do not check built-in termcaps first

"ooooo   8: using the mouse
set mouse=a          " list of flags for using the mouse
set nomousef         " the window with the mouse pointer donot become the current one
set mousehide        " hide the mouse pointer while typing

"ooooo   9: GUI
"set tb=icons,text,tooltips  " "icons", "text" and/or "tooltips"; how to show the toolbar
set guipty                 " use a pseudo-tty for I/O to external commands
" set noguipty                 " donot use a pseudo-tty for I/O to external commands

"ooooo   10: Printing
"set printdevice=
"set printexpr=
"set printoptions=

"ooooo   11: Messages and Info
set shm=at  "shortmess=at : list of flags to make messages shorter
set showcmd   " show (partial) command keys in the status line
set showmode  " display the current mode in the status line
set ruler     " show cursor position below each window
" set more    " pause listings when the screen is full
set confirm   " start a dialog when a command fails
set vb        " use a visual bell for error messages

"ooooo   12: Selecting text

"ooooo   13: Editing text
set ul=100     " undolevels : maximum number of changes that can be undone
set tw=120     " textwidth  : line length above which to break a line
set wm=1       " wrapmargin : margin from the right in which to break a line
set bs=2       " backspace=2
set com=:#     " comments=:#: what comment line looks like 
set fo=tcr2oq  " formatoptions=tcr2oq
" setting format options, t is for autowrap in text
"                         c for autowrap in comment and insert comment leader
"                         r for inserting comment leader after hitting <return>
"                         2 Use the indent of the second line of the paragraph
"                         o Automatically insert the current leader after "o"
"                         q allow formatting of comments with gq
set cpt=.,w,b,u,t,i  " complete=.,w,b,u,t,i 
set inf              " infercase : adjust case of a keyword completion match
set sm               " showmatch : When inserting a bracket, briefly jump to its match
set mps=(:),{:},[:]  " matchpairs: list of pairs that match for the "%" command
set mps+=<:>
set nojs             " nojoinspaces

 
"ooooo  14: Tabs and indenting
" This option places appropriate no. of spaces when a tab is pressed. To insert
" a real tab use : CTRL-V <tab>
set ts=8     " tabstop=4    : number of spaces a <Tab> in the text stands
set sw=4     " shiftwidth=4 : number of spaces used for each step of (auto)indent
set sta      " smarttab     : a <Tab> in an indent inserts 'shiftwidth' spaces
set sts=4    " softtabstop
set sr       " shiftround   : round to 'shiftwidth' for "<<" and ">>"
set et       " expandtab    : expand <Tab> to spaces in Insert mode
set si       " smartindent  : do clever autoindenting
set ai       " autoindent   : automatically set the indent of a new line


"ooooo   15: Folding

"ooooo   16: Diff mode

"ooooo   17: Mapping

"ooooo   18: Reading and writing files
"set autowrite
set wb    " writebackup :write a backup file before overwriting a file 
set nowa  "nowriteany  " always write asking for confirmation

"ooooo   19: The swap file
"ooooo   20: command line editing
history all
set hi        " history=1000  : Number of command lines are remembered 
set wc=<TAB>  "wildchar=<TAB> : key that triggers command-line expansion
set wim=list,full " wildmode  : specifies how command line completion works
set suffixes=.swp,.o,.class,.exe,.EXE,~,.dvi,.log,.aux,.ps,.toc,.lof,.lot,.idx,.d
set wildignore=*.o,*.obj
set wildmenu


"ooooo 21: Executing external commands
set shell=/bin/tcsh

"ooooo 22: Running make and jumping to errors

"ooooo 23: Language specific

"ooooo 24: various
" set gdefault off " : use the 'g' flag for ":substitute"
set viminfo='50,\"1000,n~/.viminfo

"ooooo Folding Options
setlocal foldmethod=indent

"ooooo           Mapping functions         


" map back space to delete one character front
" 
map CTRL-V<BS>		X
map <F1> :sp 
map! <F1> :sp 

map <F2> :w
map! <F2> :wi

"map <F3> dd
"map! <F3> ddi

map <F4> dw
map! <F4> dwi

" Mapping for commenting/uncommenting the current line
map <F7> :!spell %
map! <F7> :!spell %i
map <F8> :x
map <TAB> :w

" mapping key F9 to make
map <F9> :make
         

map <F4> :set autoindent! <cr> " F-4 will toggle autoindent
" used for using user database for english spell check program
nmap n nmzz.`z
nmap N Nmzz.`z

"""" USER DEFINED KEYS """"""""""""
" F4 : toggle autoindent
" F5 : execute perl script
" F9 : start matching bracket
" F12: stop matching bracket
" \a : toggle mouse focus
" \r : toggle read only option
" \f : maximize current window
" \s : set syntax as spice
" \v : set syntax vspice
" \c : set syntax csh
" \o : set syntax off
" \[1-9] : open [1-9] buffer in current window
""""""""""""""""""""""""""""""""""""""
map <leader>f <C-W>_                   "\f will maximize current window
map <leader>r  :set ro!<cr>            "\r will toggle between read only and edit mode
map <leader>a  :set mousef!<cr>        "\a will toggle between mouse focus on or off
map <leader>s  :set syntax=spice<cr>   "\s set syntax to spice
map <leader>v  :set syntax=verilog<cr> "\s set syntax to verilog
map <leader>c  :set syntax=csh<cr>     "\s set syntax to csh
map <leader>t  :set syntax=tcl<cr>     "\s set syntax to tcl
map <leader>p  :set syntax=perl<cr>    "\s set syntax to perl
map <leader>o  :set syntax=off<cr>     "\o off syntax
map <leader>wr :set wrap!<cr>          "\w switch of auto wrap


" moving around windows
map <leader>1 :buffer 1<cr> " open buffer 1 in current window
map <leader>2 :buffer 2<cr> " open buffer 2 in current window
map <leader>3 :buffer 3<cr> " open buffer 3 in current window
map <leader>4 :buffer 4<cr> " open buffer 4 in current window
map <leader>5 :buffer 5<cr> " open buffer 5 in current window
map <leader>6 :buffer 6<cr> " open buffer 6 in current window
map <leader>7 :buffer 7<cr> " open buffer 7 in current window
map <leader>8 :buffer 8<cr> " open buffer 8 in current window
map <leader>9 :buffer 9<cr> " open buffer 9 in current window



" mapping key <ctrl-k> for upward motion, it's normally <ctrl-p>
"map  
"map <F29> ^P^M 

"  For default syntax higlighting
"source ~/.vim/myfiletypes.vim

filetype plugin indent on
augroup filetypedetect
source ~/.vim/myfiletypes.vim


if has("gui_running")
   autocmd BufWritePost ~/.gvimrc source ~/.gvimrc
   set guioptions+=b
endif



" Backspace was giving some problems, so I'm trying to map it explicitly
map <BS> 
imap <BS> 
cmap <BS> 

colorscheme morning

"*************************************************************************************************************

"***********       Some experimeted data yet to understand their use


"***   key strock customised
"mmap <leader>r :set ro!<cr> "\r will toggle between read only and edit mode
"map <leader>a :set mousef!<cr> "\a will toggle between mouse focus on or off
"map <leader>f <C-W>_ " \f will maximize current window
"map <leader>s :set syntax=spice<cr> "\s set syntax to spice
"map <leader>v :set syntax=scheme<cr> "\s set syntax to scheme
"map <leader>c :set syntax=csh<cr> "\s set syntax to csh
"map <leader>o :set syntax=off<cr> "\o off syntax 
"***   Commenting and uncommenting lines with /*   */  C style
"map  <F5> I/*A*/
"map! <F5> I/*A*/
"map  <F6> I<Del><Del>Axx
"map! <F6> I<Del><Del>Axxi

"***********       These things will work if the templetes  path is known     

:autocmd BufNewfile *.pl,*.PL	:r ~/.vim/templates/skel.pl
":autocmd BufNewfile *.csh	0r ~/.vim/templates/skel.csh
":autocmd BufNewfile *.tex	0r ~/.vim/templates/skel.tex
":autocmd BufNewfile *.sh	0r ~/.vim/templates/skel.sh
":autocmd BufNewfile *.c,*.C	0r ~/.vim/templates/skel.c
":autocmd BufNewfile *.h		0r ~/.vim/templates/skel.h
":autocmd BufNewfile *.vhd,*.vhdl  0r ~/.vim/plugin/vhdl.vim


"***     Helps to pause while listing  fills the whole the screen default is off (funny)


"*   Whenever I open a new file the Lucent Technologies Propriety rights file is read
"

"autocmd BufNewFile * read ~/.propheader
"autocmd FileReadPre *.cc read ~/.include
"autocmd BufEnter * set comments=
"autocmd BufEnter * set autoindent
"autocmd BufEnter * set formatoptions=tc2oq

"                   I'm trying auto commands let me see what happens
"autocmd BufNewFile,BufReadPost *.c *.cc *.h syntax match cMyInclude "^[ \t]*#[ \t]*include[ \t]*" contains cIncluded
"autocmd BufNewFile,BufReadPost *.c *.cc *.h highlight cMyInclude links to cInclude
"autocmd BufEnter *.c set cindent
"autocmd BufEnter *.c set comments=sr:/*,mb:*,el:*/
"autocmd BufEnter *.c set formatoptions=cr2o

"           Comment highlighting for c++ files, since I use only .cc and .h, I included 
" only those. If any other extensions are used, they should be mentioned
"autocmd BufEnter *.cc,*.cpp,*.h set cindent
"autocmd BufEnter *.cc,*.cpp,*.h set comments=sr:/*,mb:*,el:*/,://
"autocmd BufEnter *.cc,*.cpp,*.h set formatoptions=cr2o

"autocmd BufEnter *.java set cindent
"autocmd BufEnter *.java set comments=sr:/**,mb:*,el:*/,sr:/*,mb:*\ ,el:*/,://
"autocmd BufEnter *.java set formatoptions=cr2o

" .bbl files are bibliography files for latex. So,..
"autocmd BufEnter *.bbl source $VIM/syntax/tex.vim

" Comments etc. for latex files
" make = latex <filename> (without extension)
"autocmd BufEnter *.tex set makeprg=latex\ %:r
"autocmd BufEnter *.tex,*.bbl set comments=:%
"autocmd BufEnter *.tex,*.bbl set formatoptions=crt2o

" Comments in shell scripts and .rc and .pl files usually start with
"autocmd BufEnter *.sh,*.bash,.*rc,*.pl set comments=:#
"autocmd BufEnter *.sh,*.bash,.*rc,*.pl set formatoptions=cr2oq

" Comments in VHDL code
"autocmd BufEnter *.vhd set comments=:--
"autocmd BufNewFile Makefile,makefile :r ~/lib/Makefile
"autocmd BufEnter Makefile,makefile set noet

"autocmd BufEnter .Xdefaults set comments=:!
"autocmd BufEnter .Xresources set comments=:!

"autocmd BufEnter .exrc, .gvimrc, .vimrc set comments=:\"
"autocmd BufEnter .exrc, .gvimrc, .vimrc set formatoptions=cr2oq

" I want these to be ignored in filename completion


" **complete
" The default is ".,w,b,u,t,i", which means to scan:
"	   1. the current buffer
"	   2. buffers in other windows
"       3. other loaded buffers
"       4. unloaded buffers
"       5. tags
"       6. included files

