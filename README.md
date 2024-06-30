Run install.zsh to copy symlinks into home directory.

Aquamacs

Clone aquamacs-preferences and aquamacs-config repos into ~/Library/Preferences/Aquamacs Emacs and ~/Library/Application Support/Aquamacs Emacs folders

cd ~/Library/Preferences/Aquamacs Emacs
git init
git remote add origin git@github.com:shevaun/aquamacs-preferences.git
git fetch
git checkout origin/main -b main


cd ~/Library/Application Support/Aquamacs Emacs
git init
git remote add origin git@github.com:shevaun/aquamacs_config.git
git fetch
git checkout origin/main -b main
