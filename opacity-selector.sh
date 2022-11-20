W_PID=$(xprop _NET_WM_PID | cut -d' ' -f3)
# echo "Selected process id" "$W_PID"
WINDOWID=$(wmctrl -lp | grep -i "$W_PID" | cut -d" " -f1)
# echo "Selected id" "$WINDOWID"

# xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$(printf 0x%x $((0xffffffff * 100   / 100)))"

zenity --scale --print-partial --title="Opacity" --text="Elige un numero de 1 a 100" --min-value=1 --max-value=100 --value=75 | while read val; do xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$(printf 0x%x $((0xffffffff * $val / 100)))"; done
