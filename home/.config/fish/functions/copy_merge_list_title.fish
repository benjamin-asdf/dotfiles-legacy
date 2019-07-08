function copy_merge_list_title
    set MY_NAME "Ben"
    set list_title $MY_NAME Pending Merge (git rev-parse --abbrev-ref HEAD)
    echo $list_title
    echo $list_title | xclip -i -selection clipboard
end
