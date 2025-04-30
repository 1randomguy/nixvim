{pkgs, ...}: {
  plugins = {
    # Hardmode
    hardtime = {
      enable = true;
    };

    # neo-tree
    neo-tree = {
      enable = true;
    };

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
      extensions.ui-select.enable = true;
    };

    # Auto Session
    auto-session = {
      enable = true;
      settings = {
        auto_auto_restore = false;
        use_git_branch = true;
      };
    };

    # Smooth scrolling
    neoscroll = {
      enable = true;
      settings = {
        easing_function = "quadratic";
      };
    };

    # Zen Mode
    zen-mode.enable = true;

    # Sandwich
    sandwich.enable = true;

    # Easy commenting
    comment.enable = true;

    # Todo Comments
    todo-comments.enable = true;

    # Syntax Highlighting
    treesitter = {
      enable = true;
      settings = {
        highlight.enable = { __raw = "vim.bo.filetype == 'markdown'"; };
      };
    };
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

    # zk
    zk = {
      enable = true;
    };

    # image pasting
    clipboard-image = {
      enable = true;
    };

    # show images
    image.enable = true;

    # sudo(a)
    vim-suda.enable = true;

    # Markdown Preview
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    # Markdown prettify
    render-markdown = {
      enable = true;
      settings = {
        heading = {
          position = "inline";
          width = [
            "full"
            "block"
          ];
          min_width = 100;
        };
        #indent.enabled = true;
        bullet = {
          icons = [
            "●"
            #"◆"
          ];
        };
        code = {
          sign = false;
        };
        link = {
          enabled = true;
          footnote = {
            superscript = true;
            prefix = "";
            suffix = "";
          };
          highlight = "RenderMarkdownLink";
          wiki = { 
            icon = "󱗖 ";
            highlight = "RenderMarkdownWikiLink";
          };
        };
        anti_conceal = {
          enabled = false;
        };
        latex = {
          enabled = true;
          render_modes = false;
          converter = "latex2text";
          highlight = "RenderMarkdownMath";
          position = "above";
          top_pad = 0;
          bottom_pad = 0;
        };
      };
    };

    # Display colors from hex codes
    colorizer.enable = true;

    #VimTex
    vimtex = {
      enable = true;
      texlivePackage = pkgs.texlive.combined.scheme-full;
      settings = {
        view_method = "zathura";
      };
    };

    # Language Servers
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true; # Nix
        pyright.enable = true; # Python
        clangd.enable = true; # C/C++
        bashls.enable = true; # Bash
        dockerls.enable = true; # Docker
        #marksman.enable = true; # Markdown
        yamlls.enable = true; # YAML
        rust_analyzer = { # Rust
          enable = true;
          installRustc = true;
          installCargo = true;
        };
        ts_ls.enable = true; # TS/JS
        texlab.enable = true;
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
          "<Tab>" = "cmp.mapping(function(fallback)
            -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
            if cmp.visible() then
              local entry = cmp.get_selected_entry()
              if not entry then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              end
              cmp.confirm()
            else
              fallback()
            end
          end, {'i','s'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping({
            i = function(fallback)
              if cmp.visible() and cmp.get_active_entry() then
                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                fallback()
              end
            end,
            s = cmp.mapping.confirm({ select = true }),
            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
          })";
          "<S-CR>" = "cmp.mapping.confirm({ select = true })";
        };
      };
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "selenized";
      src = pkgs.fetchFromGitHub {
        owner = "calind";
        repo = "selenized.nvim";
        rev = "a43e34d91c3ed9b9c6803150b62458f81e000f31";
        hash = "sha256-xpN2ezh8mQiQ1DVKThvw4AfCkmo1BVB5okdiPm0Y328=";
      };
    })
    # (pkgs.vimUtils.buildVimPlugin {
    #   name = "darcula-solid";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "santos-gabriel-dario";
    #     repo = "darcula-solid.nvim";
    #     rev = "d950b9ca20096313c435a93e57af7815766f3d3d";
    #     hash = "sha256-lH47rd6xIlArA9BwML3ZsQYOLCr4DKVeLMRcW9kFz1A=";
    #   };
    # })
    pkgs.vimPlugins.rnvimr
    pkgs.vimPlugins.everforest
    pkgs.vimPlugins.ayu-vim
    #pkgs.vimPlugins.catppuccin-nvim
    pkgs.vimPlugins.dracula-nvim
    pkgs.vimPlugins.kanagawa-nvim
    pkgs.vimPlugins.melange-nvim
    pkgs.vimPlugins.monokai-pro-nvim
    pkgs.vimPlugins.nightfox-nvim
    pkgs.vimPlugins.onedark-nvim
    pkgs.vimPlugins.oxocarbon-nvim
    pkgs.vimPlugins.vscode-nvim
    pkgs.vimPlugins.gruvbox-nvim
    pkgs.vimPlugins.cyberdream-nvim
  ];

  colorschemes = {
    catppuccin.enable = true;
  };
}
