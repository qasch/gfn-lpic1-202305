#!/bin/bash

my_name=kai

# Gib die Variable my_name aus
echo my_name: $my_name

echo \$0: $0    # Name des Skripts
echo \$1: $1	# Erstes dem Skript übergebenes Argument
echo \$2: $2    # Zweites dem Skript übergebenes Argument
echo \$3: $3	# Drittes dem Skript übergebenes Argument
echo \$#: $#	# Anzahl der dem Skript übergebenen Argumente

echo \$1, \$2, \$3: $1, $2, $3
echo \$*: $*    # alle dem Skript übergebenen Argumente
echo \$@: "$@"  # alle dem Skript übergebenen Argumente, jedes Argument wird in doppelte Anführungszeichen gesetzt

echo \$!: $!	# PID des zuletzt ausgeführten Programms
echo \$$: $$	# PID der aktuellen Shell

echo \$?: $?	# Exit Code des zuletzt ausgeführten Kommandos: 0 bedeutet, dass das Kommando erfolgreich ausgeführt wurde, alles was nicht 0 ist, deutet auf einen Fehler hin
