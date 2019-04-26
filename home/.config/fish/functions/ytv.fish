function ytv --description 'youtube-dl video in current directory'
	youtube-dl --audio-quality 0 -o './%(title)s.%(ext)s' $argv
end
