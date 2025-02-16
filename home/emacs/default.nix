{ pkgs, ... }:
{
  services.emacs.enable = true;
  programs.emacs = {
    enable = true;
    extraPackages =
      epkgs: with epkgs; [
        use-package
        consult
        corfu
        vertico
        meow
        eglot
        paredit
      ];
  };
}
