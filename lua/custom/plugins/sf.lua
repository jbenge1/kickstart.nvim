return {
  'jbenge1/sf.nvim',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'ibhagwan/fzf-lua', -- no need if you don't use listing metadata feature
  },
  config = function()
    local Sf = require 'sf'
    -- -- ORG MANAGEMENT
    vim.keymap.set('n', '<leader>js', Sf.set_target_org, { desc = '[J] [S]et target org' })
    vim.keymap.set('n', '<leader>ju', Sf.auth_org, { desc = '[J] A[u]th/login org' })
    vim.keymap.set('n', '<leader>jo', Sf.org_open, { desc = '[J] [O]pen org in browser' })
    vim.keymap.set('n', '<leader>jO', Sf.org_open_current_file, { desc = '[J] [O]pen file in org' })
    -- vim.keymap.set('n', '<leader>jw', Sf.quick_org_switcher, { desc = '[J] S[w]itch org (picker)' })

    -- FILE SYNC
    vim.keymap.set('n', '<leader>jp', Sf.save_and_push, { desc = '[J] [P]ush current file' })
    vim.keymap.set('n', '<leader>jr', Sf.retrieve, { desc = '[J] [R]etrieve current file' })
    vim.keymap.set('n', '<leader>jd', Sf.diff_in_target_org, { desc = '[J] [D]iff with org' })
    vim.keymap.set('n', '<leader>jm', Sf.list_md_to_retrieve, { desc = '[J] [M]etadata list' })

    -- TESTS
    vim.keymap.set('n', '<leader>jt', Sf.run_current_test_enhanced, { desc = '[J] Run [t]his test (enhanced)' })
    vim.keymap.set('n', '<leader>ja', Sf.run_all_tests_in_this_file_enhanced, { desc = '[J] Run [a]ll tests (enhanced)' })
    -- vim.keymap.set('n', '<leader>jt', Sf.run_current_test, { desc = '[J] Run [t]his test' })
    vim.keymap.set('n', '<leader>jT', Sf.run_current_test_with_coverage, { desc = '[J] Run [T]his test w/ coverage' })
    -- vim.keymap.set('n', '<leader>ja', Sf.run_all_tests_in_this_file, { desc = '[J] Run [a]ll tests in file' })
    vim.keymap.set('n', '<leader>jA', Sf.run_all_tests_in_this_file_with_coverage, { desc = '[J] Run [A]ll tests w/ coverage' })
    vim.keymap.set('n', '<leader>jR', Sf.repeat_last_tests, { desc = '[J] [R]epeat last test' })
    vim.keymap.set('n', '<leader>jv', Sf.toggle_sign, { desc = '[J] Co[v]erage toggle signs' })
    vim.keymap.set('n', '<leader>jV', Sf.covered_percent, { desc = '[J] Co[V]erage show percent' })

    -- CREATE
    vim.keymap.set('n', '<leader>jn', Sf.create_apex_class, { desc = '[J] [N]ew apex class' })
    vim.keymap.set('n', '<leader>jl', Sf.create_lwc_bundle, { desc = '[J] New [L]WC' })
    vim.keymap.set('n', '<leader>jc', Sf.create_trigger, { desc = '[J] New trigger (apex [c]ode)' })

    -- EXECUTE/RUN
    vim.keymap.set('n', '<leader>jq', Sf.run_query, { desc = '[J] Run [Q]uery (SOQL file)' })
    vim.keymap.set('n', '<leader>jQ', Sf.run_highlighted_soql, { desc = '[J] Run [Q]uery (visual)' })
    vim.keymap.set('x', '<leader>jQ', Sf.run_highlighted_soql, { desc = '[J] Run [Q]uery (visual)' })
    vim.keymap.set('n', '<leader>je', Sf.run_anonymous, { desc = '[J] Run (anon ap[e]x)' })

    -- LOGS & DEBUG
    vim.keymap.set('n', '<leader>jL', Sf.pull_log, { desc = '[J] [L]ogs pull/view' })

    -- TERMINAL
    vim.keymap.set('n', '<leader>jx', Sf.toggle_term, { desc = '[J] Toggle terminal' })
    vim.keymap.set('n', '<leader>jk', Sf.cancel, { desc = '[J] [K]ill/cancel command' })
    --
    --
    -- vim.keymap.set('n', '<leader>js', Sf.set_target_org, { desc = 'Set Default Org' })
    -- vim.keymap.set('n', '<leader>ju', Sf.auth_org, { desc = '(Re)Authorize an Org' })
    -- vim.keymap.set('n', '<leader>jp', Sf.save_and_push, { desc = 'Push To Default Org' })
    -- vim.keymap.set('n', '<leader>ja', Sf.run_all_tests_in_this_file, { desc = 'Run All Tests in File' })
    -- vim.keymap.set('n', '<leader>jA', Sf.run_all_tests_in_this_file_with_coverage, { desc = 'Run All Tests in File w/ coverage' })
    -- vim.keymap.set('n', '<leader>jt', Sf.run_current_test, { desc = 'Run This Test' })
    -- vim.keymap.set('n', '<leader>jT', Sf.run_current_test_with_coverage, { desc = 'Run This Test w/ coverage' })
    -- vim.keymap.set('n', '<leader>jo', Sf.org_open, { desc = 'Open Default Org' })
    -- vim.keymap.set('n', '<leader>jq', Sf.cancel, { desc = 'Cancel Running Process' })
    -- vim.keymap.set('n', '<leader>jn', Sf.create_apex_class, { desc = 'Create Apex Class' })
    -- vim.keymap.set('n', '<leader>jl', Sf.create_lwc_bundle, { desc = 'Create LWC' })
    -- vim.keymap.set('n', '<leader>jx', Sf.toggle_term, { desc = 'Toggle Pane' })
    require('sf').setup() -- Important to call setup() to initialize the plugin!
  end,
}
