{
  # Import all your configuration modules here
  imports = [ 
    ./plugins.nix 
    ./options.nix
    ./keymaps.nix
  ];
  nixpkgs.config = {
    allowUnfree = true;
  };
}
