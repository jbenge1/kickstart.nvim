require('luasnip.session.snippet_collection').clear_snippets 'apex'

local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('apex', {
  s('ll', fmt('for({} {}:{}){{\n\t{}\n}}', { i(1), i(2), i(3), i(0) })),
  s('log', fmt("System.debug('{}');", { i(1) })),
  s('if', fmt('if ({}) {{\n    {}\n}}', { i(1, 'condition'), i(0, '/* code */') })),
  s('try', fmt("try {{\n    {}\n}} catch (Exception e) {{\n    System.debug('Exception: ' + e.getMessage());\n}}", { i(0) })),
  s('soql', fmt('List<{}> {} = [SELECT {} FROM {} WHERE {}];', { i(1, 'SObject'), i(2, 'records'), i(3, 'fields'), i(4, 'ObjectName'), i(0, 'condition') })),
  s('for', fmt('for (Integer {} = 0; {} < {}; {}++) {{\n    {}\n}}', { i(1, 'i'), i(2, 'i'), i(3, 'count'), i(4, 'i'), i(0) })),
  s('map', fmt('Map<{}, {}> {} = new Map<{}, {}>();', { i(1, 'KeyType'), i(2, 'ValueType'), i(3, 'mapName'), i(4, 'KeyType'), i(5, 'ValueType') })),
  s('list', fmt('List<{}> {} = new List<{}>();', { i(1, 'SObject'), i(2, 'listName'), i(3, 'SObject') })),
  s('test', fmt('@isTest\nprivate static void {}() {{\n    Test.startTest();\n    {}\n    Test.stopTest();\n}}', { i(1, 'testMethodName'), i(0) })),
})
