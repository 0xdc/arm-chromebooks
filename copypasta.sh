#!/bin/bash
# https://chromium.googlesource.com/apps/libapps/+/master/nassh/doc/FAQ.md#Is-OSC-52-aka-clipboard-operations_supported

printf "\033Ptmux;\033\033]52;c;$(base64 -w0)\a\033\\"
