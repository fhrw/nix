{ ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      terminal.shell = "fish";
      font = {
        normal = {
          family = "Iosevka";
          style = "Regular";
        };
        size = 14;
      };
      env = {
        WINIT_X11_SCALE_FACTOR = "1.0";
      };
    };
  };
}
