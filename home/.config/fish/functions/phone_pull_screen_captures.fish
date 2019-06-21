function phone_pull_screenshots --description 'pull screenshots directory into /tmp/unity-debugging'
    mkdir -p /tmp/phone-screen-captures && adb -d pull /storage/self/primary/Pictures/Screenshots/ /tmp/phone-screen-captures
end
