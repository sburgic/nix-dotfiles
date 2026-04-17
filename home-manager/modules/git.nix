{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lazygit
  ];

  programs.git = {
    enable = true;
    userName = "Sani Burgic";
    userEmail = "sburgic@proton.me";
    extraConfig = {
      push = {
        autoSetupRemote = true;
      };
      alias = {
        co = "checkout";
        br = "branch -avv";
        ci = "commit";
        ca = "commit --amend";
        can = "commit --amend --no-edit";
        st = "status";
        fp = "fetch -p origin";
        rp = "rev-parse HEAD";
      };
    };
  };
}
