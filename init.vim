let g:python_host_prog=expand('~/.local/share/python2/bin/python')
let g:python3_host_prog=expand('~/.local/share/python3/bin/python')

" DEIN SETUP ********************************************************************

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ian/.cache/dein/repos/github.com/Shougo/dein.vim
"set runtimepath+=/home/ian/.cache/dein/repos/github.com/autozimu/LanguageClient-neovim

" Required:
if dein#load_state('/home/ian/.cache/dein')
  call dein#begin('/home/ian/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ian/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('vim-airline/vim-airline')
  call dein#add('srcery-colors/srcery-vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim') " , { 'do': ':UpdateRemotePlugins' }
  call dein#add('autozimu/languageClient-neovim')
  call dein#add('junegunn/fzf')
  call dein#add('wesQ3/vim-windowswap')
  call dein#add('rhysd/vim-notes-cli', {
    \  'lazy' : 1,
    \  'on_cmd' : ['Notes', 'NotesSelect', 'NotesNew', 'NotesList', 'NotesGrep'],
    \})
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" END DEIN SETUP ****************************************************************

for f in split(glob('~/.config/nvim/init.d/*.vim'), '\n')
    exec 'source' f
endfor
