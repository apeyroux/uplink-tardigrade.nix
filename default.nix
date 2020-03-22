with import <nixpkgs> {};

let
  version = "0.35.3";
in stdenv.mkDerivation {
  name = "uplink-${version}";
  src = fetchurl {
    url = "https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip";
    sha256 = "0n402s1lw3y54zy17klg8ji8awy18awg4bbiv05hasinv4lwxrxh";
  };
  buildInputs = [ unzip ];
  builder = ./builder.sh;
}
