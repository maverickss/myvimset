filetype plugin indent on
let g:pydiction_location = '~/.vim/pydiction/complete-dict'
set tags=tags;
set autochdir

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=0

set nocompatible
set history=100
filetype on
filetype plugin on
set viminfo+=!
syntax on
set formatoptions=tcrqn
set autoindent
set smartindent
set shiftwidth=3
set showmatch
set ruler
set nohls
set incsearch
let g:neocomplcache_enable_at_startup = 1
if &term=="xterm"
   set t_Co=8
   set t_Sb=^[[4%dm
   set t_Sf=^[[3%dm
endif
:inoremap ( ()
:inoremap ) =ClosePair(')')
:inoremap { {}
:inoremap } =ClosePair('}')
:inoremap [ []
:inoremap ] =ClosePair(']')
:inoremap < <>
:inoremap > =ClosePair('>')

function ClosePair(char)
   if getline('.')[col('.') - 1] == a:char
      return ""
   else
      return a:char
   endif
endf
set nocp
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with -=ClosePair('>')
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item ()but don't insert=ClosePair(')')
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]
execute pathogen#infect()
