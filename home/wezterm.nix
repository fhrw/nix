{ ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      			return {
      				font = wezterm.font("Iosevka"),
      				font_size = 14.0,
      				color_scheme = "Modus Vivendi",
      				
      				hide_tab_bar_if_only_one_tab = true,
      			}
      		'';
  };
}
