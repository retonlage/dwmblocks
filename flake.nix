{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {self, nixpkgs, utils}:
    let
      out = system:
    let
      pkgs = nixpkgs.legacyPackages."${system}";
    in {
      defaultPackage = pkgs.stdenv.mkDerivation {
        name = "dwmblocks";
        src = ./.;

        nativeBuildInputs = with pkgs; [
          xorg.libX11
        ];
      };
    }; in with utils.lib; eachSystem defaultSystems out;
}
