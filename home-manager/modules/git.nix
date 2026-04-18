{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lazygit
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Sani Burgic";
        email = "sburgic@proton.me";
      };
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
