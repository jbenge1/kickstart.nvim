return {
  'xixiaofinland/sf.nvim',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'ibhagwan/fzf-lua', -- no need if you don't use listing metadata feature
  },

  config = function()
    local Sf = require 'sf'
    vim.keymap.set('n', '<leader>js', Sf.set_target_org, { desc = 'Set Default Org' })
    vim.keymap.set('n', '<leader>jp', Sf.save_and_push, { desc = 'Push To Default Org' })
    vim.keymap.set('n', '<leader>ja', Sf.run_all_tests_in_this_file, { desc = 'Run All Tests in File' })
    vim.keymap.set('n', '<leader>jA', Sf.run_all_tests_in_this_file_with_coverage, { desc = 'Run All Tests in File w/ coverage' })
    vim.keymap.set('n', '<leader>jt', Sf.run_current_test, { desc = 'Run This Test' })
    vim.keymap.set('n', '<leader>jT', Sf.run_current_test_with_coverage, { desc = 'Run This Test w/ coverage' })
    vim.keymap.set('n', '<leader>jo', Sf.org_open, { desc = 'Open Default Org' })
    vim.keymap.set('n', '<leader>jq', Sf.cancel, { desc = 'Cancel Running Process' })
    vim.keymap.set('n', '<leader>jn', Sf.create_apex_class, { desc = 'Create Apex Class' })
    vim.keymap.set('n', '<leader>jl', Sf.create_lwc_bundle, { desc = 'Create LWC' })
    vim.keymap.set('n', '<leader>jx', Sf.toggle_term, { desc = 'Toggle Pane' })
    require('sf').setup() -- Important to call setup() to initialize the plugin!
  end,
}
