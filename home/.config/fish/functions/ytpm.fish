# Defined in /etc/fish/config.fish @ line 59
function ytpm --description 'youtube-dl playlist as music in the music folder'
	youtube-dl -x --audio-quality 0 -o '$HOME/Music/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $argv
end
