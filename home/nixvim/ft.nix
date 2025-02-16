{ ... }:
{
  extraConfigLua =
    # lua
    ''
      vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
      	pattern = {"*.purs"},
      	command = "setf purescript",
      })
    '';
}
