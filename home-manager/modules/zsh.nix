{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    zsh
    fortune
    cowsay
  ];

  programs.zsh = {
    enable = true;

    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      share = true;
      ignoreSpace = true;
    };

    sessionVariables = {
      PATH = "${pkgs.coreutils}/bin:${config.home.homeDirectory}/.local/bin:$PATH";
    };

    shellAliases = {
      ll = "ls -la";
      lg = "lazygit";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "fzf" ];
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "zsh-autosuggestions";
        src = pkgs.zsh-autosuggestions;
        file = "share/zsh-autosuggestions/zsh-autosuggestions.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
    ];

    initContent = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
      fortune | cowsay
    '';
  };

  programs.fzf.enable = true;
}
