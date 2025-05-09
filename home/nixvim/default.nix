{ pkgs, lib, ... }:
{
  imports = [
    ./keymaps.nix
    ./style.nix
    ./telescope.nix
    ./treesitter.nix
    ./harpoon.nix
    ./folds.nix
    ./lsp.nix
    ./completion.nix
    ./format.nix
    ./lint.nix
    ./icons.nix
    ./ft.nix
    ./surround.nix
    # ./debug.nix
  ];

  config = {
    globals = {
      mapleader = " ";
    };

    opts = {
      number = true;
      colorcolumn = "80";
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      wrap = false;
      swapfile = false; # Undotree
      backup = false; # Undotree
      undofile = true;
      hlsearch = false;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "no";
      updatetime = 50;
      foldlevelstart = 99;
    };

    plugins = {
      gitsigns.enable = true;
      oil.enable = true;
      undotree.enable = true;
      fugitive.enable = true;
    };
    extraPackages = with pkgs; [
      # Formatters
      asmfmt
      astyle
      cmake-format
      gofumpt
      golines
      # gotool
      isort
      nixfmt-rfc-style
      shfmt
      stylua
      # Linters
      gitlint
      golangci-lint
      hadolint
      html-tidy
      luajitPackages.luacheck
      markdownlint-cli
      nodePackages.jsonlint
      shellcheck
      vale
      yamllint
      # Debuggers / misc deps
      asm-lsp
      (if stdenv.isDarwin then null else bashdb)
      clang-tools
      delve
      fd
      (if stdenv.isDarwin then null else gdb) # Not supported on MacOS
      go
      lldb_17
      llvmPackages_17.bintools-unwrapped
      marksman

      python3
      ripgrep
      (if stdenv.isDarwin then null else rr) # Not supported on MacOS
      tmux-sessionizer
    ];
  };
}
