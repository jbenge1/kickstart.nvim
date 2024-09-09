local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('all', {
  s('ll', fmt('for({} {} : {}){}', { i(1), i(2), i(0), i(3) })),
})
