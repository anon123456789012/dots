" general preferences
  set number					" set absolute line numbers
  set relativenumber			" set relative line numbers
" ^^^^^^^^^^^^^^^^^^			" set both above for hybrid line numbers
"======================================================================================

set nowrap						" disable word wrapping
set ignorecase					" caps doesnt break things now
set smartcase					" search for lowercase works for upper as well, but uppercase search is case sensitive
set smartindent					" useful auto indenting
set tabstop=4					" the correct amount of spaces for tabs
set shiftwidth=4				" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
set shortmess=It				" disable intro message

"======================================================================================
" visual preferences
colorscheme vim
syntax on						" syntax highlighting
set guicursor=n-v-c-i:block		" set block cursor for all modes instead of default bar
set guicursor=a:blinkon100		" force cursor blink
"vim.opt.statusline = '%t%r%h  |  %F  |  %l:%c'
"vim.opt.statusline = '%F  |  %t%r%h  |  %l:%c'
"vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#000000', bg = '#A0A0A0' })
"vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#000000', bg = '#A0A0A0' })
set statusline=%t\ \\|\%r%h\ %F\ %l:%c
"======================================================================================

" key mapping modifications 
" disable record mode
map q <Nop>

"======================================================================================
