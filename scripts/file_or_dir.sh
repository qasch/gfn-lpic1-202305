#!/usr/bin/env bash

# Skript soll zurückgeben, ob übergebenes Argument eine Datei oder ein Verzeichnis ist

# test -f -> datei
# test -d -> verzeichnis

# Prüfung auf Existenz
if [ ! -e $1 ]; then
  echo "$1: existiert nicht."
  exit 1
fi

# Berechtigungen aus ls Listing ausschneiden
berechtigungen=$(ls -ld $1 | cut -d' ' -f1)

# Prüfung auf Datei
if [ -f $1 ]; then	
  echo "$1: ist eine reguläre Datei" 
  file $1 
  exit 0
fi

# Prüfung auf Verzeichnis
if [ -d $1 ]; then
  echo "$1: ist ein Verzeichnis"
  echo "$1: hat folgende Berechtigungen: $berechtigungen"
  exit 0
fi
