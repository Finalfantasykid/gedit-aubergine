#!/bin/bash

ROOT_UID="0"

# Create Directories if they don't exist
if [ ! -d "~/.local/share/gtksourceview-2.0/styles/" ]; then
    mkdir -p ~/.local/share/gtksourceview-2.0/styles
fi
if [ ! -d "~/.local/share/gtksourceview-3.0/styles/" ]; then
    mkdir -p ~/.local/share/gtksourceview-3.0/styles
fi

# Copy the files
cp aubergine.xml ~/.local/share/gtksourceview-2.0/styles/aubergine.xml
cp aubergine.xml ~/.local/share/gtksourceview-3.0/styles/aubergine.xml

# Install to the system if running as root
if [ "$UID" -eq "$ROOT_UID" ] ; then
    # Install for Gedit 2.x
	if [ -d "/usr/share/gnome/gtksourceview-2.0/styles/" ]; then
        cp aubergine.xml /usr/share/gnome/gtksourceview-2.0/styles/aubergine.xml
    fi
    if [ -d "/usr/local/share/gtksourceview-2.0/styles/" ]; then
        cp aubergine.xml /usr/local/share/gtksourceview-2.0/styles/aubergine.xml
    fi
    if [ -d "/usr/share/gtksourceview-2.0/styles/" ]; then
        cp aubergine.xml /usr/share/gtksourceview-2.0/styles/aubergine.xml
    fi
    
    # Install for Gedit 3.x
    if [ -d "/usr/share/gnome/gtksourceview-3.0/styles/" ]; then
        cp aubergine.xml /usr/share/gnome/gtksourceview-3.0/styles/aubergine.xml
    fi
    if [ -d "/usr/local/share/gtksourceview-3.0/styles/" ]; then
        cp aubergine.xml /usr/local/share/gtksourceview-3.0/styles/aubergine.xml
    fi
    if [ -d "/usr/share/gtksourceview-3.0/styles/" ]; then
        cp aubergine.xml /usr/share/gtksourceview-3.0/styles/aubergine.xml
    fi
fi
