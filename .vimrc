
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

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
" mkm add vim-scala and elixir
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" vim-plug
"Plug 'elixir-lang/vim-elixir'
" NeoBundle
"NeoBundle 'elixir-lang/vim-elixir'
" Vundle

"mkm stuff here
"matthew hates autoindent
filetype indent off
set nu
set tabstop=2
set expandtab
au FileType c,cpp setlocal comments-=://

set tags+=tags;$HOME
set viminfo='20,\"5000
match Error /\s\+$/
set nohlsearch

" no auto comment:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set background=dark
colorscheme ir_black
"colorscheme xoria256
"colorscheme desert
syntax on

" ,cc to comment, ,cu to uncomment
" doesnt work..Commenting blocks of code.
"autocmd FileType c,cpp,java,scala        let b:comment_leader = '// '
"autocmd FileType sh,ruby,python,Rscript  let b:comment_leader = '# '
"autocmd FileType conf,fstab        let b:comment_leader = '# '
"autocmd FileType tex               let b:comment_leader = '% '
"autocmd FileType mail              let b:comment_leader = '> '
"autocmd FileType vim               let b:comment_leader = '" '
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


