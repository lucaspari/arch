#!/bin/bash
color="#e54e71"

TEMP=$(sensors | awk '/Core 0/ {print $3}')
echo "%{F$color}$TEMP%{F-}"
