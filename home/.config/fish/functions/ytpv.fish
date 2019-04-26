function ytpv --description 'youtube-dl video playlist into current directory'
	youtube-dl --audio-quality 0 -o './%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $argv
end
