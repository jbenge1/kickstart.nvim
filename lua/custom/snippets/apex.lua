local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_mode

local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('apex', {
  s('ll', fmt('for({} {} : {}{\n})', { i(1), i(2), i(0) })),
})
