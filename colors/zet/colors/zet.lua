-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'zet'

-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.
package.loaded['lush_theme.zet'] = nil

-- include our theme file and pass it to lush to apply
require('lush')(require('lush_theme.zet'))
