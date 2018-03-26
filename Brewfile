# Robb's Brewfile.
# Contains commonly-used applications when provisioning a new Mac.

## Taps
tap "caskroom/cask"                     # GUI apps.
tap "caskroom/versions"                 # Alternate versions of Casks.
tap "caskroom/fonts"                    # Open-source / free font files.
tap "buo/cask-upgrade"                  # CLI to check for outdated Casks.

## DEVELOPMENT ENVIRONMENT
### Common development environment dependencies.

#### CLI / Shell
brew "automake"							# Makefiles.
brew "git"		                        # Version control.
brew "gnupg"	                        # PGP encryption.
brew "monkeysphere"                     # Makes PGP keys usable for SSH.
brew "openssl"	                        # TLS and SSL cryptography library.
brew "moreutils",                       # Additional coreutil-type Unix utils
  args: ["without-parallel"]            # (avoid conflict with GNU parallel)
brew "openssh"                          # SSH secure server access.
brew "parallel"                         # Run shell processes in parallel.
brew "pigz"                             # Parallelized gzip compression.
brew "pv"                               # Pipe viewer; view progress.
brew "wget"                             # Retrieve content fron web servers.
brew "zsh"		                        # Zshell, the best terminal.
brew "zsh-completions"	                # Better auto-completions.
brew "zsh-syntax-highlighting"          # Colorize Zsh.

#### DevOps
brew "awscli"		                    # CLI access to Amazon Web Services.
brew "heroku"		                    # CLI access to Heroku.

#### Go
brew "go"                               # Go language.

#### Geospatial
brew "geos"                             # Geometry engine for simple features.
brew "udunits"                          # Conversion of physical units measures.

#### JavaScript
brew "node"		                        # Node JS runtime.
brew "nvm"		                        # Node version manager.
brew "jq"                               # CLI JSON processor.

#### Python
brew "python2"                          # Python 2.x.
brew "python"                           # Python 3.x.
brew "scipy"                            # Python for scientific operations.
brew "numpy"                            # Python for math operations.

#### Ruby
brew "rbenv"		                    # Ruby version management.

#### Databases
brew "mysql"                            # MySQL (and ODBC drivers for MySQL).
cask "postgres",                       	# PostgreSQL GUI and CLI tools,
  restart_service: :changed             # plus PostGIS functionality.
brew "redis"		                    # In-memory data store.
brew "unixodbc"                         # Open database connectivity drivers.
  brew "freetds",                       # Microsoft SQL Server driver.
    args: ["with-unixodbc"]
  brew "psqlodbc"                       # PostgreSQL ODBC driver.
  brew "sqliteodbc"                     # SQLite ODBC driver.

#### R
brew "r"                                # R language (command line support).
cask "rstudio-preview"			        # IDE for the R language.

#### Swift
brew "carthage"                         # Manage Swift dependencies.

## VIRTUAL MACHINES
### Virtual machine management / reproducibility / portability.
cask "docker"                           # Container management.
brew "docker-machine-parallels"         # Docker containers in Parallels VMs.
cask "vagrant"                          # Virtual machine management.
cask "vagrant-manager"                  # Access Vagrant boxes via menu bar.

## DEVELOPER APPS
### Software for making software.
cask "atom"		                        # Extensible free text editor.
cask "dash"		                        # Developer documentation.
cask "iterm2" 	                        # The best console emulator.
cask "keybase"		                    # Easy PGP-key file sharing.

## CONVENIENCE AND HELPERS
cask "gmvault"                          # CLI to archive / back up Gmail.
brew "locateme"                         # CLI to retrieve machine's location.
brew "speedtest-cli"                    # CLI for the Ookla network speed test.
cask "osxfuse"                          # Extend macOS file handling to S3.

### QuickLook Plugins
#### Extends the functionality of QuickLook (spacebar preview) for Finder.
cask "qlcolorcode"                      # Code syntax highlighting.
cask "qlmarkdown"                       # Preview Markdown files.
cask "quicklook-csv"                    # Preview CSV data files.
cask "quicklook-json"                   # Preview JSON data files.

## PRODUCTIVITY APPS
### The most common Mac desktop apps - browser, file control, etc.
cask "1password-beta"		                # Password and other secure doc storage.
cask "adobe-creative-cloud"             # Adobe (Photoshop, Illustrator, etc.)
cask "alfred"			                      # Alternative file search / hotkeys.
cask "backblaze"                        # Cloud backup GUI.
cask "balsamiq-mockups"                 # Wireframing tool.
cask "basecamp"                         # Collaboration tool.
cask "bartender" 		                    # Rearrange / hide Mac menu bar apps.
cask "chatology"		                    # Save and search iMessage.
cask "daisydisk"		                    # Hard drive visualization.
cask "dropbox"			                    # File storage and sync.
cask "evernote"                         # Note and document storage.
cask "freeze"                           # Amazon Glacier client.
cask "google-chrome"		                # Browser, quasi-OS, eater-of-RAM.
cask "hazel"			                      # File system automation and cleaning.
cask "istat-menus"		                  # System status bar.
cask "kaleidoscope"                     # File diffing tool.
cask "lumen"                            # Adjusts brightness for screen content.
cask "little-snitch"		                # Incoming/outgoing request filter.
brew "nativefier"                       # Create Electron apps from URLs.
cask "optimal-layout"                   # Keyboard-based window manager.
cask "paw"                              # HTTP(S) and REST client.
cask "parallels-desktop"	              # Virtual machine manager.
cask "postico"			                    # PostgreSQL database client.
cask "quickbooks-online"                # Wrapper for accounting web app.
cask "shimo"                            # OpenVPN client.
cask "spotify"			                    # Streaming music client.
cask "superduper"		                    # Bootable clones of your hard drive.
cask "tad"                              # CSV file viewer.
cask "transmit"			                    # FTP and S3 client.
brew "youtube-dl"                       # YouTube downloader CLI.

## MAC APP STORE APPS
### Install Apps previously purchased through the Mac App Store.
### Run "brew install mas" and "mas signin" before running this portion;
### the MAS setup can't be run for the first time within the Brewfile.
brew "mas"                              # Mac App Store formulas for brew.

mas "deliveries",     id: 924726344     # Package and shipment tracker.
mas "cardhop",        id: 1290358394    # Address book contact manager.
mas "fantastical",    id: 975937182     # Calendar and reminders manager.
mas "gemini",         id: 1090488118	  # Dedupes files and directories.
mas "ia-writer",      id: 775737590     # Plain text editor.
mas "scratchpad",     id: 1210167684    # Notepad in Notification center.
mas "tabletool",      id: 1122008420    # Simple CSV editor.
mas "tweetbot",       id: 557168941     # Twitter client.
mas "wifi-explorer",  id: 494803304     # Information on wireless networks.
mas "xcode",          id: 497799835     # Build Mac and iOS apps.
mas "xscope",	        id: 889428659		  # Pixel sampler and hex code editor.

## FONTS
### Sourced from https://github.com/caskroom/homebrew-fonts where available,
### with licensed fonts sourced from a private Github repo.
brew "freetype"                         # Font rendering library.
cask "font-courier-prime-code"          # Courier monospace font.
cask "font-montserrat"                  # Sans-serif header font.
cask "font-nixie-one"                   # Typewriter-style font (Linnaean logo).
