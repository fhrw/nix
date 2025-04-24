{ ... }:
{
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "felix.dork@gmail.com";
        name = "Felix Watson";
      };
      ui = {
        default-command = [
          "log"
          "--reversed"
        ];
        editor = "nvim";
      };
    };
  };
}
