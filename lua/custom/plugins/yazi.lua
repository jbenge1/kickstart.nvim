return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>e', '<cmd>Yazi<cr>', desc = 'Yazi (current file dir)' },
    { '<leader>cw', '<cmd>Yazi cwd<cr>', desc = 'Yazi (cwd)' },
  },
  opts = {
    open_for_directories = true,
  },
}
