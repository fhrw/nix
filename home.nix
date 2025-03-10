{
  config,
  pkgs,
  inputs,
  system,
  ...
}:
 let
   neovimconfig = import ./home/nixvim;
   nvim = inputs.nixvim.legacyPackages.aarch64-darwin.makeNixvimWithModule {
     inherit pkgs;
     module = neovimconfig;
   };
 in
{
  imports = [
    ./home/i3
    ./home/alacritty.nix
    ./home/fish.nix
    ./home/direnv.nix
    ./home/emacs
    ./home/jj.nix
    ./home/newsboat.nix
  ];

  home.username = "felix";
  # home.homeDirectory = "/Users/felix";

  home.packages = with pkgs; [
    nnn
    nvim
    lazygit

    zip
    xz
    unzip

    ripgrep
    jq
    eza
    fzf

    tree
    which
    lsof
    xclip

    iosevka
  ];

  fonts.fontconfig.enable = true;

  programs.git = {
    enable = true;
    userName = "fhrw";
    userEmail = "felix.dork@gmail.com";
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
