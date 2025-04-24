{ pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    settings.formatters_by_ft = {
      asm = [ "asmfmt" ];
      css = [
        "prettier"
        "prettierd"
      ];
      go = [
        "goimports"
        "gofumpt"
        "golines"
      ];
      haskell = [ "ormolu" ];
      html = [
        "prettierd"
        "prettier"
      ];
      javascript = [
        "prettierd"
        "prettier"
      ];
      json = [ "prettier" ];
      lua = [ "stylua" ];
      markdown = [ "prettier" ];
      nix = [ "nixfmt" ];
      sh = [ "shfmt" ];
      yaml = [
        "prettierd"
        "prettier"
      ];
    };
    settings.formatters = {
      asmfmt = {
        command = "asmfmt";
        stdin = true;
      };
    };
    settings.format_on_save = {
      lspFallback = true;
      timeoutMs = 2000;
    };
  };
}
