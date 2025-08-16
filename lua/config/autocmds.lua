-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Function to set all highlight groups' background to none

-- Transparent background
local function make_all_transparent()
  for _, group in ipairs(vim.fn.getcompletion("", "highlight")) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
    if ok then
      hl.bg = "none"
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

local function set_transparent()
  -- Core UI
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
end

-- Apply on startup and after colorscheme change
-- vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
--   callback = set_transparent,
-- })

