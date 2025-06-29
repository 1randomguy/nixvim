{...}: {
  opts = {
    number = true;
    relativenumber = true;
    
    cursorline = true;

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;
  };
  autoCmd = [
    {
      command = "TSBufEnable highlight";
      event = [
        "BufEnter"
        "BufWinEnter"
      ];
      pattern = [
        "*.md"
      ];
    }
  ];
  nixpkgs.config = {
    allowUnfree = true;
  };
}
