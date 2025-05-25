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
      action = "<cmd>Telescope file_browser<CR>";
      key = "<leader>fd";
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
      action = "<cmd>Yazi<CR>";
      key = "<leader>fy";
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
    {
      action = "<cmd>LazyGit<CR>";
      key = "<leader>gg";
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
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      key = "<leader>ra";
    }
    {
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
      key = "<leader>rr";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.implementation()<CR>";
      key = "<leader>ri";
      mode = "n";
    }
    {
      action = "<cmd>lua vim.lsp.buf.document_symbol()<CR>";
      key = "<leader>ros";
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
      key = "<leader>nt";
    }
    {
      action = "<cmd>ZkBacklinks<CR>";
      key = "<leader>nb";
    }
    {
      action = "<cmd>ZkNotes { sort = {'modified'}}<CR>";
      key = "<leader>no";
    }
    {
      action = "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>";
      key = "<leader>nf";
      mode = "n";
    }
    {
      action = "<Cmd>'<,'>ZkMatch<CR>";
      key = "<leader>nf";
      mode = "v";
    }
    {
      action = "<Cmd>'<,'>ZkNewFromTitleSelection<CR>";
      key = "<leader>nn";
      mode = "v";
    }
    {
      action = "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>";
      key = "<leader>nn";
      mode = "n";
    }
  ];
}
