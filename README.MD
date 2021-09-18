# "MMM, Linux" - Monica's Minimal Manjaro Linux
A collection of commands to get Minimal Manjaro set up for a mix of productivity and gaming.

# Notes about structure
To keep things readable for myself (and anyone else who snags this), I broke everything down into categories like utilities, dependencies for various programs, and finally the apps themselves.

# Known app issues and fixes
0. Discord can sometimes freeze up in Manjaro, and it's usually because the system is missing a notification daemon. I included notify-osd and dunst, which have both been reliable for me to fix the lockups. When notification daemons don't help, reinstalling wine-staging does.

1. foobar2000 might throw playback errors even after successful listening. Reinstalling lib32-alsa-plugins, lib32-libpulse, and lib32-openal seems to fix it.

# BNET in Lutris requires some extra setup steps
In winetricks, create a prefix named win32. Then enter the win32 prefix to:
  0. Run winecfg and set Windows 10 as the Applications tab Windows Version and check all boxes in the Staging tab
  1. Install ie8 from the Install a Windows DLL or component option
  2. Install corefonts from the Install a font option
  3. Close winetricks, open Lutris, and from Wine settings, flip the Runner options switch to Use system winetricks (and then save)
  
# Other notes
Read more about my Linux setup on the infose.cc blog: https://blog.infose.cc/2021/09/arch-rivals-manjaro-linux-vs-also.html

Enjoy! xoxo
