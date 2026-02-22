{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  # https://devenv.sh/languages/
  languages.rust = {
    enable = true;
    channel = "stable";
  };

  git-hooks.hooks = {
    rustfmt.enable = true;
    clippy.enable = true;
  };
}
