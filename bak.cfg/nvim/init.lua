-- General Preferences

vim.opt.number = true														-- absolute line numbers
vim.opt.relativenumber = true												-- relative line numbers (used in conjunction with 'vim.opt.number = true' for relative numbers on line without cursor, and absolute numbers for line with cursor)

vim.opt.wrap = false														-- disable line wrapping
vim.opt.linebreak = true													-- use linebreak when wrap is enabled

vim.opt.ignorecase = true													-- ignore case sensitive search
vim.opt.smartcase = true													-- use case sensitive search only when caps is used (used in conjunction with 'vim.opt.ignorecase = true')

vim.opt.smartindent = true													-- use auto indentation for certain types of code
vim.opt.tabstop = 4															-- number of spaces a tab character represents
vim.opt.shiftwidth = 4														-- number of spaces used for auto indentation when editing code

vim.opt.shm = "aI"															-- a to use l & b instead of lines and bytes, use + instead of modified, use RO instead of readonly, and use w instead of "written". I to disable intro messages

vim.opt.timeoutlen = 0														-- disable nvim and vim escape sequence timeout
vim.opt.ttimeoutlen = 0														-- disable terminal escape sequence timeout

----------------------------------------------------------------------------------------------------

-- visual preferences (not referring to visual mode)

require('primary')															-- set colorsheme
vim.opt.termguicolors = true												-- force truecolor
vim.opt.syntax = 'on'														-- enable syntax highlighting
vim.opt.guicursor = "a:block,a:blinkon100"									-- cursor settings; 'a:block' forces block for normal mode, visual mode, cli mode, insert mode, 'a:blinkon100' forces cursor blink every 100ms
vim.opt.statusline = "%t | %F %l:%c / %L %=%p%%"							-- status line formatting (%t = filename, %F = full path, %l = line number, %c = column number, %L = number of lines in buffer, %= = all to the right of this goes to the far right of the bar, %p = percent through file

----------------------------------------------------------------------------------------------------

-- key mapping

vim.keymap.set('n', 'q', '<Nop>', { noremap = true, silent = true })		-- disable q record macro
vim.keymap.set('n', '<F1>', '<NOP>', { noremap = true, silent = true })		-- disable f1 help

vim.opt.tabline = ""
