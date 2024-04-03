{ inputs, ... }: {
  programs = {
    vscode.enable = true;
    google-chrome = {
      enable = true;
      commandLineArgs = [ "--gtk-version=4" ];
    };
    chromium = {
      enable = true;
      commandLineArgs = [ "-app='https://r.qq.com' --gtk-version=4" ];
    };
    home-manager.enable = true;
  };
}
