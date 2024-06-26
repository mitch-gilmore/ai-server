let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.flask
      python-pkgs.celery
      python-pkgs.amqp
    ]))
    pkgs.ruff
    pkgs.python3
  ];
}
