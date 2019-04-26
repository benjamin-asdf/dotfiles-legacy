function getgit --description 'wrapper around git clone, only pass in author/repo'
	git clone http://github.com/$1.git
end
