#!/usr/bin/fish

#TODO abstraction (create-idlegame-symlink)

set currDir (pwd)
set inIdlegameDir (echo $currDir | grep -e '\/IdleGame$')


if test "$inIdlegameDir" = ""
    echo "Enter IdleGame folder first"
    exit 1
end

set symlinkDir $currDir"SymbolicLink-Extra"

if not test -f "$symlinkDir"
    mkdir -p "$symlinkDir"
end

echo "Start linking"

# "Assets"
for name in "Config" "ProjectSettings" "Packages"
    set f1 $currDir/$name
    set f2 $symlinkDir/$name
    if contains dry $argv
        echo -e "DRY $f1 -> $f2"
    else
        echo -e "LINK $f1 TO $f2"
        ln -v -sf $f1 $f2
        or begin
            echo "Fail"
            rm $symlinkDir/*
            exit 1
        end
    end
end

echo "Success"
