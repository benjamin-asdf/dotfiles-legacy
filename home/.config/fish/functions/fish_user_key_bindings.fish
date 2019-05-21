function fish_user_key_bindings
  fzf_key_bindings
  for mode in insert default visual
      bind -M $mode \cl forward-char
      bind -M $mode \ck clear
  end
end
