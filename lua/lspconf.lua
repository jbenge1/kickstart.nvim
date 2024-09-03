require('lspconfig').apex_ls.setup {
  apex_jar_path = '/Users/justin/.config/nvim/apex-jorje-lsp.ja'
  apex_enable_semantic_errors = false, -- Whether to allow Apex Language Server to surface semantic errors
  apex_enable_completion_statistics = false, -- Whether to allow Apex Language Server to collect telemetry on code completion usage
}
