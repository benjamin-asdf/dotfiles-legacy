function unity_phone --description 'forward port for unity profiler'
    adb -d forward tcp:54999 localabstract:Unity-{com.gamingforgood.clashofstreamers}
end
