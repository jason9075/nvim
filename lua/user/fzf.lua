local fzf_status_ok, fzf = pcall(require, "fzf-lua")
if not fzf_status_ok then
  return
end

local opts = { noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", opts)
