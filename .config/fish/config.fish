# This is a configuration for fish running in WSL 2.
# I disabled the native Windows graphic server (WSLg) because it's still buggy
# And I'm using VcXsrv as a graphic server.

set -x WIN_HOST (awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null) 
set -x DISPLAY $WIN_HOST:0
set -x WAYLAND_DISPLAY ""
