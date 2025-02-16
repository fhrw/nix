{ pkgs, ... }:
{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>?" = {
        action = "oldfiles";
        options = {
          desc = "[?] Find recently opened files";
        };
      };
      "<leader><space>" = {
        action = "find_files";
        options = {
          desc = "[ ] Find files";
        };
      };
      "<leader>/" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "[/] Fuzzily search in current buffer]";
        };
      };
      "<leader>fb" = {
        action = "find_buffers";
        options = {
          desc = "[f]ind [b]uffers";
        };
      };
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "[s]earch [h]elp";
        };
      };
      "<leader>fw" = {
        action = "grep_string";
        options = {
          desc = "[s]earch current [w]ord";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "[s]earch by [g]rep";
        };
      };
      "<leader>fd" = {
        action = "diagnostics";
        options = {
          desc = "[s]earch [d]iagnotics";
        };
      };
      "<leader>fk" = {
        action = "keymaps";
        options = {
          desc = "[s]earch [k]eymaps";
        };
      };
    };
  };
}
