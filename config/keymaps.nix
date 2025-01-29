{
  globals.mapleader = " ";

  keymaps = [
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fh";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>fb";
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fg";
    }
    {
      action = "<cmd>Telescope frecency<CR>";
      key = "<leader>fr";
    }
    {
      action = "<cmd>SessionSearch<CR>";
      key = "<leader>sl";
    }
    {
      action = "<cmd>UndotreeToggle<CR>";
      key = "<leader>ut";
    }
    {
      action = "<cmd>UndotreeFocus<CR>";
      key = "<leader>uf";
    }
    {
      action = "<cmd>Ex<CR>";
      key = "<leader>fe";
    }
    {
      action = "<cmd>Tex<CR>";
      key = "<leader>te";
    }
    {
      action = "<cmd>tabnew<CR>";
      key = "<leader>tn";
    }
    {
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      key = "<leader>do";
      options.desc = "Diagnostic Open";
    }
  ];
}
