{
  globals.mapleader = " ";

  keymaps = [
    {
      action = "<C-w>j";
      key = "<C-j>";
      options.noremap = true;
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      options.noremap = true;
    }
    {
      action = "<C-w>h";
      key = "<C-h>";
      options.noremap = true;
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      options.noremap = true;
    }
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
      action = "<cmd>LazyGit<CR>";
      key = "<leader>git";
      options.desc = "Open LazyGit";
    }
    # LSP
    {
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
      key = "<leader>do";
      options.desc = "Diagnostic Open";
    }
    {
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      key = "<leader>rn";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      key = "gra";
    }
    {
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
      key = "grr";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
      key = "gri";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.document_symbol()<CR>";
      key = "gO";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
      key = "<C-s>";
      mode = "i";
    }
    # zk
    {
      action = "<cmd>ZkTags<CR>";
      key = "<leader>zt";
    }
    {
      action = "<cmd>ZkNotes { sort = {'modified'}}<CR>";
      key = "<leader>zo";
    }
    {
      action = "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";
      key = "<leader>zf";
      mode = "n";
    }
    {
      action = "<Cmd>'<,'>ZkMatch<CR>";
      key = "<leader>zf";
      mode = "v";
    }
    {
      action = "<Cmd>'lua CreateZkNoteFromSelection()<CR>";
      key = "<leader>zn";
      mode = "v";
    }
  ];
}
