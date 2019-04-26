function nix-rebuild-os
	sudo nixos-rebuild $argv[1] -I nixpkgs=/home/mikus/.nix-config/nixpkgs $argv[2..-1]
end
