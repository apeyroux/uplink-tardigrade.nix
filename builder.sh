source $stdenv/setup

unzip -o $src
chmod 755 uplink
mkdir -p $out/bin
mv uplink $out/bin/uplink
