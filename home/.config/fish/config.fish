function hybrid_bindings --description "Vi-style bindings that inherit emacs-style bindings in all modes"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
		
    fish_vi_key_bindings --no-erase

		set -U fish_cursor_default block
		set -U fish_cursor_insert line
		set -U fish_cursor_visual block

		bind -s --preset l up-or-search
		bind -s --preset k down-or-search

		
		for mode in default visual
				bind -s --preset -M $mode j backward-char
				bind -s --preset -M $mode \; forward-char

				bind -s --preset -M $mode l up-line
				bind -s --preset -M $mode k down-line
				bind -s --preset -M $mode \cb beginning-of-line 
				bind -s --preset -M $mode \ce end-of-line 
		end
		
end
set -g fish_key_bindings hybrid_bindings
