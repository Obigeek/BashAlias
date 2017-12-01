# BashAlias
The Bash Alias project is a simple one file script that adds some of the most useful aliases to your bash environment. It includes a number of aliases and functions to streamline and simplify all of the various tasks you carry out on a daily basis.

## Installation
Installation is really simple, just download the main file to your home directory and load it in. Then whenever you login the aliases will be loaded and you can use them all. To download the file run the command:

```sh
wget https://git.io/vFxyw --output-document .bash_aliases
```

## Aliases

`DF` - Replaces the DF command with PYDF (Must be enabled)(1)<br/>
`DU` - Replaces the DU command with NCDU (Must be enabled)(1)<br/>
`fuck` - An easy alias to correct you mistakes using 'thefuck' package<br/>
<b>LS COLORS</b> - Loads in the LS COLORS system if it exists, no commands just loads it</br>
`todos` - Returns a list of all TODO and FIXME tags in the current project<br/>
`rebash` - Reloads the bashrc file, loading any new aliases<br/>

`ls` - Adds color output to LS<br/>
`sl` - Correction for misspelling<br/>
`lsl` - Adds the options 'lhFA' to LS and pipes it into less<br/>
`lsd` - Adds the 'ld' options to LS<br/>
`lx` - Adds the 'X' option to LS<br/>
`lr` - Adds the 'XR' options to LS<br/>

`.1` - CD up one Directory<br/>
`.2` - CD up two Directories<br/>
`.3` - CD up three Directories<br/>
`.4` - CD up four Directories<br/>
`.5` - CD up five Directories<br/>

`lip` - Returns Internal IP address<br/>
`ipinfo` - Returns external IP and hostname<br/>

`install` - Shortcut for apt-get install, adds sudo if not root<br/>
`update` - Shortcut for apt-get update, adds sudo if not root<br/>
`upgrade` - Shortcut for apt-get upgrade, adds sudo if not root<br/>
`reboot` - Shortcut for reboot, adds sudo if not root<br/>
`shutdown` - Shortcut for shutdown, adds sudo if not root<br/>

`!!` - Shortcut for Sudo !!<br/>
`makescript` - Turns your last command into a script<br/>
`genpasswd` - Generates a random password<br/>
`tree` - Builds a visual tree listing of directories<br/>
`now` & `nowtime` - Returns the current system time<br/>
`nowdate` - Returns the current system date<br/>
`wget` - Enables continuation for the wget command<br/>
`cl` - Shortcut for clear<br/>
`cls` - Clear and List<br/>
`rmr` - Recursive RM<br/>
`mkp` - Passes the 'pv' options to MKDIR<br/>
`histg` - Pipes your command history into grep for searching<br/>
`free` - Passes the 'mt' options to the free command<br/>
`ps` - Passes the 'auxf' options to the ps command<br/>
`cmount` - Pipes mount into columns for easy reading<br/>
`grep` - Auto Colours GREP

Finally these Aliases are safety nets, passing --preserve-root to the respective command:
`rm`<br/>
`mv`<br/>
`cp`<br/>
`ln`<br/>
`chown`<br/>
`chmod`<br/>
`chgrp`

(1) - These must be enabled by removing the comment from the start of the line.

## Functions
`cs` - CD's into directory, clears and LS's. Aliased to CD.<br/>
`mkcd` - Makes the directory, including parents, CD's into it and clear the screen.<br/>
`myinfo` - Returns a host of useful information about your system, including things like CPU, OS and Kernel Version<br/>
`myuptime` - Returns the current uptime of the system<br/>
`backup` - Makes a copy of the specified file with the added extension .bak<br/>
`extract` - A single command to extract anything you may want to<br/>
`md5check` - MD5 Checksum comparison for the specified file and a given MD5 Checksum<br/>
`permalias` - Adds a given alias to your .bash_aliases file for more permanent use

## Contributing Code
Some aspects of this projects code have been taken from other sources, or relies on other projects. With Thanks To:
- [nvbn][2] - Author of [thefuck][3]
- [trapd00r][4] - Author of [LS COLORS][5]
- [xvoland][6] - Author of the [extract][7] function included

## Project Site
For more information about all of the various aliases and functions, check out the [project site][1].

[1]: https://obigeek.com/projects/bash-alias
[2]: https://github.com/nvbn
[3]: https://github.com/nvbn/theufuck
[4]: https://github.com/trapd00r
[5]: https://github.com/trapd00r/LS_COLORS
[6]: https://github.com/xvoland
[7]: https://github.com/xvoland/Extract
