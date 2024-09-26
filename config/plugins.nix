{
  plugins = {
    telescope = {
      enable = true;
      extensions.fzf-native.enable = true;
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

    # Gitblame 
    gitsigns = {
      enable = true;
      settings.current_line_blame = true;
    };

  };
}
