"------------------------------------------------------------------------------
"-----------------------------------Vim Plug-----------------------------------
"------------------------------------------------------------------------------

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

"------------------------------------------------------------------------------
"-----------------------------------Git Plugins--------------------------------
"------------------------------------------------------------------------------

" Extends git commands into vim
Plug 'tpope/vim-fugitive'

" Shows git diffs, and extends how vim can work with those diffs
Plug 'airblade/vim-gitgutter'

"------------------------------------------------------------------------------
"--------------------------------Quality Of Life-------------------------------
"------------------------------------------------------------------------------

" Smooth Scrolling
Plug 'yuttie/comfortable-motion.vim'

" Vim Eunuch -- Vim sugar for UNIX shell commands
Plug 'tpope/vim-eunuch'

" Better Comments
Plug 'preservim/nerdcommenter'

" Personal notes wiki
Plug 'vimwiki/vimwiki'

" Better MD support
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Formatter
Plug 'sbdchd/neoformat'

"------------------------------------------------------------------------------
"---------------------------------Syntax Helpers-------------------------------
"------------------------------------------------------------------------------

" Auto Completion
Plug 'codota/tabnine-vim'

" Vim Surround -- Extend Bracket, tag, and paren functionality
Plug 'tpope/vim-surround'

" Emmet snippeets for vim
Plug 'mattn/emmet-vim'

" Extend completion and removal of paired elements
Plug 'jiangmiao/auto-pairs'

"------------------------------------------------------------------------------
"-------------------------------------Visuals----------------------------------
"------------------------------------------------------------------------------

"  Vim Rainbow -- Colorize matching pairs
Plug 'frazrepo/vim-rainbow'

" Emoji support
Plug 'junegunn/vim-emoji'

" Dracula theme
Plug 'dracula/vim'

" Minimal Status Bar
Plug 'itchyny/lightline.vim'

" Css Color Display
Plug 'skammer/vim-css-color'

"------------------------------------------------------------------------------
"----------------------------------File Managers-------------------------------
"------------------------------------------------------------------------------

" Fuzzy Find -- Better Searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Nerd Tree -- Better File Manager
Plug 'preservim/nerdtree'|
Plug 'Xuyuanp/nerdtree-git-plugin'


call plug#end()
