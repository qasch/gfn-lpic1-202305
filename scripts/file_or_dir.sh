#!/usr/bin/env bash

# Skript soll zurückgeben, ob übergebenes Argument eine Datei oder ein Verzeichnis ist

# test -f -> datei
# test -d -> verzeichnis

# && -> logisches UND, rechter Teil wird nur ausgeführt wenn linker erfolgreich
# || -> logisches ODER, rechter Teil wird nur ausgeführt wenn linker NICHT erfolgreich

test -f $1 && echo "$1 ist eine reguläre Datei"
test -d $1 && echo "$1 ist ein Verzeichnis"
