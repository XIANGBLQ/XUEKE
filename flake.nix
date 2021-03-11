{
  description = "Harry Ying's blog";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system: rec {
      apps = with utils.lib;
        with import nixpkgs { system = "${system}"; }; {
          check = mkApp {
            drv = writeShellScriptBin "zola-check" ''
              ${pkgs.zola}/bin/zola check
            '';
          };
          commit = mkApp {
            drv = writeShellScriptBin "commit-blog" ''
              export PATH=${
                lib.strings.makeBinPath [ git coreutils findutils nixfmt zola ]
              }
              echo -n "Formatting & Checking..."
              find . -type f -name '*.nix' -exec nixfmt {} +
              zola check
              echo "Done."

              echo -n "Adding to git..."
              git add --all
              echo "Done."

              git status
              read -n 1 -s -r -p "Press any key to continue"

              echo "Commiting..."
              echo "Enter commit message: "
              read -r commitMessage
              git commit -m "$commitMessage"
              echo "Done."

              echo -n "Pushing..."
              git push
              echo "Done."
            '';
          };
        };

      defaultApp = apps.commit;

      # `nix develop`
      devShell = with import nixpkgs { system = "${system}"; };
        mkShell { nativeBuildInputs = [ zola ]; };
    });
}
