{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    meslo-lg
  ];

  home.file.".config/kitty/kitty.conf".text = ''
    shell ${pkgs.zsh}/bin/zsh

    font_family      MesloLGS NF
    font_size        12

    window_padding_width 8
    cursor_shape beam
    scrollback_lines 10000
    enable_audio_bell no
    confirm_os_window_close 0

    # Catppuccin Mocha
    foreground #CDD6F4
    background #1E1E2E
    selection_foreground #1E1E2E
    selection_background #F5E0DC

    cursor #F5E0DC
    cursor_text_color #1E1E2E

    url_color #F5E0DC

    active_tab_foreground   #11111B
    active_tab_background   #CBA6F7
    inactive_tab_foreground #CDD6F4
    inactive_tab_background #181825
    tab_bar_background      #11111B

    active_border_color   #B4BEFE
    inactive_border_color #6C7086

    color0  #45475A
    color1  #F38BA8
    color2  #A6E3A1
    color3  #F9E2AF
    color4  #89B4FA
    color5  #F5C2E7
    color6  #94E2D5
    color7  #BAC2DE
    color8  #585B70
    color9  #F38BA8
    color10 #A6E3A1
    color11 #F9E2AF
    color12 #89B4FA
    color13 #F5C2E7
    color14 #94E2D5
    color15 #A6ADC8
  '';
}
