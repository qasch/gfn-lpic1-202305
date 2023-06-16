#!/usr/bin/env bash

# Skript soll zurückgeben, ob übergebenes Argument eine Datei oder ein Verzeichnis ist

# test -f -> datei
# test -d -> verzeichnis

set +x

# Prüfung auf Existenz
if [ ! -e $1 ]; then
  echo "$1: existiert nicht."
  #exit 1

  read -p "Möchtest du die Datei $1 erstellen? [j/n]" eingabe
  echo eingabe: $eingabe

  # Datei erstellen
  #if [ "$eingabe" = "J" ] || [ $eingabe == "j" ] ; then
  #if [[ "$eingabe" =~ [Jj]a? ]]; then
  readonly accepted_answers='Ja ja J j jawoll Jawoll Klar klar Klaro klaro yes Yes y Y'
  if [[ $accepted_answers == *$eingabe* ]]; then
    touch $1
    echo Datei $1 wurde erstellt.
  else 
    echo 'Na dann nicht...'
  fi
else
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
fi

