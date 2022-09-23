{ pkgs }: {
    deps = [
      pkgs.ocamlPackages.utop
      pkgs.ocaml
      pkgs.opam
      pkgs.dune_2
    ];
}