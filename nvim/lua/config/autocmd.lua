vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
  callback = function(e)
    local client = assert(vim.lsp.get_client_by_id(e.data.client_id))
    -- Inlay hints display inferred types, etc.
    if client:supports_method("inlayHint/resolve") then
      vim.lsp.inlay_hint.enable(true, { bufnr = e.buf })
    end
    -- Completion can be invoked via ctrl+x ctrl+o. It displays a list of
    -- names inferred from the context (e.g. method names, variables, etc.)
    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, e.buf, {})
    end
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, opts)
    vim.keymap.set("n", "grr", function()
      vim.lsp.buf.references()
    end, opts)
    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover()
    end, opts)
    vim.keymap.set("n", "gws", function()
      vim.lsp.buf.workspace_symbol()
    end, opts)
    vim.keymap.set("n", "<leader>gd", function()
      vim.diagnostic.open_float()
    end, opts)
    vim.keymap.set("n", "gca", function()
      vim.lsp.buf.code_action()
    end, opts)
    vim.keymap.set("n", "grn", function()
      vim.lsp.buf.rename()
    end, opts)
    vim.keymap.set("i", "<C-h>", function()
      vim.lsp.buf.signature_help()
    end, opts)
  end,
})
