{
  description = "A very basic flake";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
  in {
    packages.${system}.default = with (import nixpkgs {
      inherit system;
    });
      stdenv.mkDerivation {
        name = "ttymidi";
        src = let
          hard-dj = fetchFromGitHub {
            owner = "robelix";
            repo = "hard-dj";
            rev = "b361983";
            hash = "sha256-u+mMzDPzAwQKtSw3vBUWBXIgfgC/ZDW1FwGoWfsVsl4=";
          };
        in "${hard-dj}/ttymidi";
        buildInputs = [alsa-lib];
        buildPhase = ''
          make
        '';
        installPhase = ''
          mkdir -p $out/bin
          cp ttymidi $out/bin/
        '';
      };
  };
}
