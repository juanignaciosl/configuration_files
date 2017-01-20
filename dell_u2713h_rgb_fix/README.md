Taken from [this gist comment (thanks!)](https://gist.github.com/ejdyksen/8302862#gistcomment-1975418)

1    Reboot into Recovery Mode, by holding ⌘ + R when the computer is booting
2    Open the Terminal window by going to Utilities -> Terminal
3    Type csrutil disable; reboot and press Enter
4    Let the computer boot normally (not Recovery Mode)
5    I open the terminal and type this:

cd /System/Library/Displays/Contents/Resources/Overrides

(I place patch-edie.rb in the map Overrides)

sudo ruby patch-edid.rb

6    Don't stop here. It is important on re-enable the System Integrety Protection. Reboot into Recovery Mode, by holding ⌘ + R when the computer is booting
7    Open the Terminal window by going to Utilities -> Terminal
8    Type csrutil enable; reboot and press Enter
9    Let the computer boot normally. Done
