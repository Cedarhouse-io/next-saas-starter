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
        (builtins.getEnv "PORT" or "9002")
      ];
      manager = "web";
    };
  };
}