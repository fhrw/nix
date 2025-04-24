{ ... }:
{
  extraConfigLua =
    # lua
    ''
      vim.filetype.add({extension = {purs = 'purescript'}})
      -- vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
      -- 	pattern = {"*.purs"},
      -- 	command = "setf purescript",
      -- })
    '';
}
