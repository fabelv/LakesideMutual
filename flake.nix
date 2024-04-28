{
    description = "FLake to provide tools to work on this repo";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = { self, nixpkgs, flake-utils }:
        flake-utils.lib.eachDefaultSystem (system:
            let
                pkgs = import nixpkgs {
                    inherit system;
                };
            in
            {
                devShells.default = pkgs.mkShell {
                    buildInputs = with pkgs; [
                        jdk17
                        nodejs
                        awscli
                        python3
                        maven
                        docker
                        docker-compose
                        eksctl
                        kubectl
                    ];
                };
            }
        );
}
