function idlegame-fuzzy-scene-checkout
	  fd . -I -tf IdleGame/Assets/Scenes/ -e unity | fzf | xargs git checkout
end
