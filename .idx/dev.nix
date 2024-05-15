{ pkgs }:
{
  channel = "stable-23.11";
  packages = [
    pkgs.nodejs_20
  ];
  idx.extensions = [ ];

  idx.previews = {
    web = {
      command = [
        "npm"
        "run"
        "dev"
        "--"
        "--port"
        (builtins.toString (builtins.getEnv "PORT" // "9002"))
      ];
      manager = "web";
    };
  };
}
