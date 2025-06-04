#!/bin/bash

function link_scripts() {
	read -p "Create symbolic links into \"~/.local/scripts/\"? (y/N): " choice

	if [ "$choice" == "n" ] || [ "$choice" == "N" ]; then
		return
	fi

	SRC="$1"
	DEST="$2"

	if [ ! -d "$DEST" ]; then
		read -p "$DEST does not exist.. Create path? (y/N): " create_path
		if [ "$create_path" == "y" ] || [ "$create_path" == "Y" ]; then
			mkdir -p "$DEST"
		fi
	fi

	for entry in "$SRC"/*; do
		if [ -f "$entry" ]; then
			echo "Creating symbolic link from src: $entry to dest: $DEST/$(basename "$entry")"
			ln -sfn "$entry" "$DEST/$(basename "$entry")"
		fi
	done
}

