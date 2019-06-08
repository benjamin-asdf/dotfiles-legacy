function phone_pull_screenshots --description 'pull screenshots directory into /tmp/unity-debugging'
    adb -d pull /storage/self/primary/Pictures/Screenshots/ /tmp/unity-debugging/screen-capture
end
