#!/bin/bash

ROOT_UID="0"

# Remove files from the home directory if they exist
if [ -f ~/.local/share/gtksourceview-2.0/styles/aubergine.xml ]; then
    rm ~/.local/share/gtksourceview-2.0/styles/aubergine.xml
fi
if [ -f ~/.local/share/gtksourceview-3.0/styles/aubergine.xml ]; then
    rm ~/.local/share/gtksourceview-3.0/styles/aubergine.xml
fi

# Remove the installed theme on the system if they exist
if [ "$UID" -eq "$ROOT_UID" ] ; then
    # Remove for Gedit 2.x
	if [ -f /usr/share/gnome/gtksourceview-2.0/styles/aubergine.xml ]; then
        rm /usr/share/gnome/gtksourceview-2.0/styles/aubergine.xml
    fi
    if [ -f /usr/local/share/gtksourceview-2.0/styles/aubergine.xml ]; then
        rm /usr/local/share/gtksourceview-2.0/styles/aubergine.xml
    fi
    if [ -f /usr/share/gtksourceview-2.0/styles/aubergine.xml ]; then
        rm /usr/share/gtksourceview-2.0/styles/aubergine.xml
    fi
    
    # Remove for Gedit 3.x
    if [ -f /usr/share/gnome/gtksourceview-3.0/styles/aubergine.xml ]; then
        rm /usr/share/gnome/gtksourceview-3.0/styles/aubergine.xml
    fi
    if [ -f /usr/local/share/gtksourceview-3.0/styles/aubergine.xml ]; then
        rm /usr/local/share/gtksourceview-3.0/styles/aubergine.xml
    fi
    if [ -f /usr/share/gtksourceview-3.0/styles/aubergine.xml ]; then
        rm /usr/share/gtksourceview-3.0/styles/aubergine.xml
    fi
fi
