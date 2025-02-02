{pkgs, ...}: {
  plugins = {
    # Telescope to find files
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
      extensions.frecency = {
        enable = true;
        settings = {
          workspaces = {
            nixvim_conf = "/home/bene/nixvim";
            nixos_conf = "/home/bene/.dotfiles";
          };
        };
      };
    };

    # Auto Session
    auto-session = {
      enable = true;
      autoRestore.enabled = false;
      autoSession.useGitBranch = true;
    };

    # Markdown Preview
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    # Smooth scrolling
    neoscroll = {
      enable = true;
      settings = {
        easing_function = "quadratic";
      };
    };

    # Todo Comments
    todo-comments.enable = true;

    # Syntax Highlighting
    treesitter.enable = true;
    treesitter-context.enable = true;
    treesitter-refactor = {
      enable = true;
    };

    # Illuminate other usages of same name
    illuminate = {
      enable = true;
      filetypesDenylist = [
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "reason"
      ];
    };

    # Icons
    web-devicons.enable = true;

    noice = {
      enable = true;
      luaConfig.pre = ''
      require("lualine").setup({
        sections = {
          lualine_x = {
            {
              require("noice").api.statusline.mode.get,
              cond = require("noice").api.statusline.mode.has,
              color = { fg = "#ff9e64" },
            }
          },
        },
      })
      '';
      settings = {
        notify.enabled = true;
      };
    };

    # Undotree
    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

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

    # Lazygit
    lazygit = {
      enable = true;
    };

    # Autopairs
    nvim-autopairs.enable = true;

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
        rust-analyzer = { # Rust
          enable = true;
          installRustc = true;
          installCargo = true;
        };
        ts-ls.enable = true; # TS/JS
      };
    };

    # Completions
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        formatting = { fields = [ "abbr" "kind" "menu" ]; };
        sources = [
          { name = "nvim_lsp"; }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          # { name = "copilot"; } # enable/disable copilot
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
        ];

        window = {
          completion = { border = "rounded"; };
          documentation = { border = "rounded"; };
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };
  };

  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    name = "selenized";
    src = pkgs.fetchFromGitHub {
      owner = "calind";
      repo = "selenized.nvim";
      rev = "a43e34d91c3ed9b9c6803150b62458f81e000f31";
      hash = "sha256-xpN2ezh8mQiQ1DVKThvw4AfCkmo1BVB5okdiPm0Y328=";
    };
  })];

  colorschemes = {
    #ayu.enable = true;
    cyberdream.enable = true;
  };
}
