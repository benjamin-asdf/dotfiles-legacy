function phone --description 'ssh into the connected phone throught adb tunnel'
	adb $argv forward tcp:8022 tcp:8022 && ssh mikus
end
