{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
    ./modules/zsh.nix
    ./modules/kitty.nix
    ./modules/tmux.nix
    ./modules/nvim/default.nix
  ];

  home.username = "sburgic";
  home.homeDirectory = "/home/sburgic";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
