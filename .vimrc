set nocompatible              " be iMproved, required
filetype off                  " required
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'christianrondeau/vim-base64'

" Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

call vundle#end()
filetype plugin indent on " required
execute pathogen#infect()
"let g:airline_theme='simple'
colo material
set laststatus=2
let base16colorspace=256
if !has('gui_running') 
  set t_Co=256 
endif

"let g:lightline = {
"      \ 'colorscheme': 'powerline',
"      \ }
"
let g:promptline_theme = 'airline'
let g:promptline_preset = 'full'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_checkers = ['json_tool']
let g:syntastic_json_checkers = ['json_tool']
let g:syntastic_yaml_checkers = ['yamllint']
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

