{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.yarn
    pkgs.nodejs  # If you need a specific Node.js version
    # Add any other dependencies you need here
  ];
}
