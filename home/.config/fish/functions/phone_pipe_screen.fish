function phone_pipe_screen --description 'Use adb screenrecord to pipe screen'
    adb shell screenrecord --output-format=h264 - | ffplay -framerate 60 -probesize 32 -sync video -
end
