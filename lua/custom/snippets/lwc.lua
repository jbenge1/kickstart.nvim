require('luasnip.session.snippet_collection').clear_snippets 'apex'

local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('javascript', {
  s('cl', fmt('console.log({});', { i(1, 'message') })),
  s('fe', fmt('{}.forEach(({}) => {{\n    {}\n}});', { i(1, 'array'), i(2, 'item'), i(0) })),
})
