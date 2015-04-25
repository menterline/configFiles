import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
status.register("clock",
    format="%a %-d %b %X ",)

# Battery status
status.register("battery",
  format="{status} {percentage:.2f}%",
    alert=True,
    alert_percentage=5,
    status={
    "DIS": "↓",
    "CHR": "↑",
    "FULL": "FULL",
    },)

# Wireless info
status.register("wireless",
    interface="wlp2s0",
    format_up="{essid} {v4}",)

## Shows mpd status
## Format:
status.register("mpd",
    format="{status} '{title}':  {artist}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.register("pulseaudio",
    format="  ♪ {volume}%  ",)
status.run()
