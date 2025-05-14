#!/bin/sh

create_symlink() {
	echo $1
	echo $2
	echo $3
	noconfirm=0

	# Check for --noconfirm argument - Will overwrite folder without asking
	for arg in "$@"; do
		if [ "$arg" = "--noconfirm" ]; then
			noconfirm=1
			break
		fi
	done
	echo "$noconfirm"

	src=$1
	dest=$2

	if [ -z "$src" ]; then
		echo "Link source not provided."
		return
	fi

	if [ -z "$dest" ]; then
		echo "Link destination not provided."
		return
	fi

	dir=$(basename "$src")
	dest="$dest/$dir"

	# Handle case where destination directory already exists
	if [ -e $dest ]; then
		if [ "$noconfirm" -eq 0 ]; then
			echo "Path '$dest' already exists."
			read -p "Overwrite with symlink? (y/N): " overwrite
			if [ "$overwrite" != "y" ] && [ "$overwrite" != "Y" ]; then
				echo "Skipping '$dest'"
				return
			fi
		fi
		
		rm -rf "$dest"
	fi

	ln -sfn "$1" "$2"
	echo "Created Symbolic Link src: '$1' dest: '$2'"
}
