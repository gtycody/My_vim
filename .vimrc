"----------------------------------------------------------------
"                                                               :
"                       Normal setting                          :                         
"                                                               :
"----------------------------------------------------------------

"apply change at save 
autocmd BufWritePost $MYVIMRC source $MYVIMRC


"file detect (off if using plugin)
filetype off


"file type detect
filetype plugin on


"syntax 
syntax enable 
syntax on


"line number
set nu
set rnu


"indent
filetype indent on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4


"auto fill right parenthesis 
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"----------------------------------------------------------------
"                                                               :
"                       Plugin setting                          :
"                                                               :
"----------------------------------------------------------------
set nocompatible                                      "required :
set rtp+=~/.vim/bundle/Vundle.vim                     "required :
"----------------------------------------------------------------



"--------------------------------
"                               :
"            vundle             :
"                               :
"--------------------------------
call vundle#begin() "|-------------------------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'



call vundle#end() "|---------------------------------------------
filetype plugin indent on                             "required 

"indent Guide
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
colorscheme default


"STL Highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_concepts_highlight = 1

"----------------------------------------------------------------
"                                                               :
"                       Theme Setting                           :
"                                                               :
"----------------------------------------------------------------

"set backgroud
set background=dark


" set highlight
set number
set laststatus=2
set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black guibg=NONE guifg=NONE
set hlsearch

