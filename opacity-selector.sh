WINDOWID=$(printf "0x%08x" $(xdotool selectwindow))
# echo "Selected id" "$WINDOWID"

zenity --scale --print-partial --title="Opacity" --text="Elige un numero de 1 a 100" --min-value=1 --max-value=100 --value=75 | while read val; do xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$(printf 0x%x $((0xffffffff * $val / 100)))"; done
