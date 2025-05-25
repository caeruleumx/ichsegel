{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    ruby
    bundler
    nodejs # Optional: for things like live reload or frontend builds
    git    # Optional: if you're using git inside the shell
  ];

  shellHook = ''
    export GEM_HOME=$PWD/.gem
    export PATH=$GEM_HOME/bin:$PATH

    # Ensure Bundler uses the local GEM_HOME
    export BUNDLE_PATH=$GEM_HOME

    echo "Welcome to the Jekyll development shell!"
    echo "Ruby version: $(ruby -v)"
  '';
}
