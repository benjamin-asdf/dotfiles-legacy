function ytm --description 'youtube-dl video as music'
	youtube-dl -x --audio-quality 0 -o '$HOME/Music/%(title)s.%(ext)s' $argv
end
