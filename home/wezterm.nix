{ ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      		return {
      			font = wezterm.font("Iosevka"),
      			font_size = 16.0,
      			color_scheme = "Modus Vivendi",
            term = "wezterm"

      			hide_tab_bar_if_only_one_tab = true,
      		}
      	'';
  };
}
