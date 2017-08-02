###update-omz.sh
#!/bin/bash

git_executable=/usr/bin/git
git_faked=/usr/bin/git.faked
git_original=/usr/bin/git.original

#request root, staying $user

#revert git
sudo mv ${git_executable} ${git_faked}
sudo mv ${git_original} ${git_executable}

#perform the update, as given by "which upgrade_oh_my_zsh" 
env ZSH=$ZSH sh $ZSH/tools/upgrade.sh

#re-fake
sudo mv ${git_executable} ${git_original}
sudo mv ${git_faked} ${git_executable}