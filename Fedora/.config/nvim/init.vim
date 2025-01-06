syntax on
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set background = "dark"
set wildmode=longest,list
set clipboard=unnamedplus
set mouse=a


if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif
