function qt --description 'Surround standard input string in quotes'
		sed 's/^/\"/;s/$/\"/'
end
