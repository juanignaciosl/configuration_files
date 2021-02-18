pacman -S sudo vi
# Make sudo more comfortable
usermod -a -G wheel juanignaciosl
echo '... and edit, with visudo, uncommenting `%wheel ALL=(ALL) NOPASSWD: ALL`'
