import subprocess

from i3pystatus import Status

status = Status(standalone=True)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %X ",)

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
