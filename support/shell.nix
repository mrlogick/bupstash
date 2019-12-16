let 
  pkgs = (import <nixpkgs>) {};
in
  pkgs.stdenv.mkDerivation {
      name = "shell";
      
      LIBCLANG_PATH="${pkgs.llvmPackages.libclang}/lib";

      buildInputs =  with pkgs; [ clang clang-tools llvm pandoc ];

      hardeningDisable = ["all"];
  }
