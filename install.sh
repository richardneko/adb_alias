#!/bin/bash

BASHRC_PATH=~/.bashrc
ADBALIAS_PATH=~/.adb_alias

if [ ! -f "adb_alias" ]; then
	echo "ERROR: adb_alias tool not exist!"
	exit 1
fi

cp adb_alias $ADBALIAS_PATH

if [ ! -f "$BASHRC_PATH" ]; then
	echo "ERROR: .bashrc not exist!"
	exit 1
fi

if [ "`grep '\.adb_alias' $BASHRC_PATH`" != "" ]; then
	echo "Already installed? Please check your .bashrc"
	exit 1
fi

echo "source $ADBALIAS_PATH" >> "$BASHRC_PATH"
