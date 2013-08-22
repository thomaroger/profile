# commande OSX

# Suppression du son de boot
sudo nvram SystemAudioVolume=" "

# Sauvegarde sur disque (pas sur iCloud) par defaut
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Ferme automatique la fenetre d'application d'impression quand c'est fini
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Desactive la fenetre “Etes vous sur d'ouvrir cette application ?” 
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Sauvegarde des screenshots en format jpg 
defaults write com.apple.screencapture type -string "jpg"

# Finder: montre les extensiosnns des fichiers 
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# non creation des fichiers sur les volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Ouvre une fenetre du finder quand un volume est monte
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Vide la corbeille en mode securise
defaults write com.apple.finder EmptyTrashSecurely -bool true
