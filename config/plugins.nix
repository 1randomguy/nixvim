{
  plugins = {
    telescope = {
      enable = true;
      extensions.fzf-native = {
        enable = true;
        settings = {
          case_mode = "ignore_case";
          #fuzzy = false;
          override_file_sorter = false;
          override_generic_sorter = true;
        };
      };
      extensions.file-browser.enable = true;
    };
    treesitter.enable = true;
    web-devicons.enable = true;
    # Greeter
    alpha = {
      enable = true;
      theme = "dashboard";
    };

    # Statusline at the bottom
    lualine.enable = true;

    # Terminal inside of NVIM
    toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        float_opts = {
          border = "curved";
        };
        open_mapping = "[[<c-t>]]";
        hide_numbers = true;
        autochdir = true;
        close_on_exit = true;
      };
    };

    # Gitblame 
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
    };

    # Language Servers
    lsp = {
      enable = true;
      servers = {
        nil-ls.enable = true; # Nix
        pyright.enable = true; # Python
        clangd.enable = true; # C/C++
        bashls.enable = true; # Bash
        dockerls.enable = true; # Docker
        marksman.enable = true; # Markdown
        yamlls.enable = true; # YAML

        #ts-ls.enable = true; # TS/JS
        #cssls.enable = true; # CSS
        #html.enable = true; # HTML
        #phpactor.enable = true; # PHP
        #lua-ls = { # Lua
        #  enable = true;
        #  settings.telemetry.enable = false;
        #};
        ## Rust
        #rust-analyzer = {
        #  enable = true;
        #  installRustc = true;
        #  installCargo = true;
        #};
      };
    };
  };
}
