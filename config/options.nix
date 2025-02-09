{self, ...}: {
  globalOpts = {
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
  # extraConfigLua = ''
  #     function CreateZkNoteFromSelection()
  #       -- Get the visually selected text
  #       local _, ls, cs = unpack(vim.fn.getpos("'<"))  -- Start position
  #       local _, le, ce = unpack(vim.fn.getpos("'>"))  -- End position

  #       -- Get lines from the buffer
  #       local lines = vim.api.nvim_buf_get_lines(0, ls - 1, le, false)

  #       -- Extract selected text
  #       if #lines == 0 then return end  -- Safety check
  #       lines[1] = string.sub(lines[1], cs)  -- Adjust first line to start from selection
  #       lines[#lines] = string.sub(lines[#lines], 1, ce)  -- Adjust last line to end at selection
  #       local selected_text = table.concat(lines, " ")  -- Join multiple lines with space

  #       -- Escape quotes for safe command execution
  #       selected_text = selected_text:gsub("'", "\\'")

  #       -- Run ZkNew command with the selected text as title
  #       vim.cmd("ZkNew { title = '" .. selected_text .. "', group = 'general', dir = 'General' }")
  #   end
  # '';
}
