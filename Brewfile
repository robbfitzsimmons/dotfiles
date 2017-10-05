# Robb's Brewfile.
# Contains commonly-used applications when provisioning a new Mac.

# Makes sure all casks are linked to /Applications, preventing config issues.
cask_args appdir: "/Applications"

## DEVELOPMENT ENVIRONMENT
### Common development environment dependencies.

brew "awscli"		                        # CLI access to Amazon Web Services.
brew "git"		                          # Version control.
brew "gnupg"	                          # PGP encryption.
brew "heroku"		                        # CLI access to Heroku.
brew "node"		                          # Node JS runtime.
brew "nvm"		                          # Node version manager.
brew "openssl"	                        # TLS and SSL cryptography library.
brew "rbenv"		                        # Ruby version management.
brew "redis"		                        # Redis in-memory data store.
brew "zsh"		                          # Zshell, the best terminal.
brew "zsh-completions"	                # Better auto-completions.
brew "zsh-syntax-highlighting"          # Colorize Zsh.

## [DATA] SCIENCE ENVIRONMENT

tap "homebrew/science"                  # Common scientific computing resources.
brew "r"                                # Rlang (command line).
cask "rstudio"			                    # IDE for the R language.

brew "docker"                           # Container management.
cask "vagrant"                          # Virtual machine management.
cask "vagrant-manager"                  # Access Vagrant boxes via menu bar.

## DEVELOPER APPS
### Software for developing software.

cask "atom"		                          # Extensible free text editor.
cask "dash"		                          # Developer documentation.
cask "iterm2" 	                        # The best console emulator.
cask "keybase"		                      # Easy PGP-key file sharing.
cask "postgres", restart_service: true 	# PostgreSQL databases.

## CONVENIENCE AND HELPERS
brew "speedtest-cli"                        # CLI for the Ookla network speed test.

## PRODUCTIVITY APPS
### The most common Mac desktop apps - browser, file control, etc.
### Comment these out if you prefer something else.

cask "1password"		                    # Password and other secure doc storage.
cask "alfred"			                      # Alternative file search / hotkeys.
cask "basecamp"                         # Collaboration tool.
cask "bartender" 		                    # Rearrange / hide Mac menu bar apps.
cask "chatology"		                    # Save and search iMessage.
cask "daisydisk"		                    # Hard drive visualization.
cask "dropbox"			                    # File storage and sync.
cask "google-chrome"		                # Browser, quasi-OS, eater-of-RAM.
cask "hazel"			                      # File system automation and cleaning.
cask "istat-menus"		                  # System status bar.
cask "little-snitch"		                # Incoming/outgoing request filter.
cask "paw"                              # HTTP(S) and REST client.
cask "parallels-desktop"	              # Virtual machine manager.
cask "postico"			                    # PostgreSQL database client.
cask "shimo"                            # OpenVPN client.
cask "spotify"			                    # Streaming music client.
cask "superduper"		                    # Bootable clones of your hard drive.
cask "tad"                              # CSV file viewer.
cask "transmit"			                    # FTP and S3 client.

## MAC APP STORE APPS
### Install Apps previously purchased through the Mac App Store.
### Run "brew install mas" and "mas signin" before running this portion;
### the MAS setup can't be run for the first time within the Brewfile.

mas "deliveries",  id: 924726344        # Package and shipment tracker.
mas "divvy",       id: 413857545        # Keyboard-based window manager.
mas "fantastical", id: 975937182        # Calendar and reminders.
mas "gemini",      id: 1090488118	      # Dedupes files and directories.
mas "istat-mini",  id: 927292435	      # Key stats in Notification Center.
mas "tweetbot",    id: 557168941        # Twitter client.
mas "ulysses",     id: 1225570693       # Prose text editor.
mas "xscope",	     id: 889428659		    # Pixel sampler and hex code editor.
