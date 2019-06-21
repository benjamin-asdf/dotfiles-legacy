function phone_pull_syncLog
    set dest_dir '/tmp/unity-debugging/'
    mkdir -p $dest_dir && adb -d pull /storage/self/primary/Android/data/com.gamingforgood.clashofstreamers/cache/sync $dest_dir && cd $dest_dir/sync
end
