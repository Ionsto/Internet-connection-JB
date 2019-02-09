#!/usr/bin/env bash
./psping64.exe -n 5000 www.google.com:80 -q -i 0.5 | stdbuf -o0 grep -Po "\d*\.\d*(?=ms)" | tee -a data.txt