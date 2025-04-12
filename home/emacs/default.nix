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
        eglot
        paredit
	evil
	evil-collection
      ];
    extraConfig = ''
      (setq standard-indent 2) 
      (setq tool-bar-mode 0
      	    scroll-bar-mode 0
	    menus-bar-mode 0
	    blink-cursor-mode 0)

      (require 'evil)
      (require 'vertico)
    '';
  };
}
