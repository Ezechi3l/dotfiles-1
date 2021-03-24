#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree

brew install "automake"
brew install "ctags"
brew install "ffmpeg"
brew install "fzf"
brew install "git-flow"
brew install "lazydocker"
brew install "markdown"
brew install "n"
brew install "neovim"
brew install "python"
brew install "unrar"
brew install "tldr"
brew install "the_silver_searcher"
brew install "zsh"

# taps
brew install "noti"
brew install "trash"

# Applications
#cask "anybar" maybye I will use it someday
brew install --cask "android-file-transfer"
brew install --cask "anki"
brew install --cask "calibre"
brew install --cask "disk-inventory-x"
brew install --cask "docker"
brew install --cask "graphiql"
brew install --cask "postman"
brew install --cask "sequel-pro"
brew install --cask "slack"
brew install --cask "sonic-pi"
brew install --cask "spotify"
brew install --cask "sublime-merge"
brew install --cask "vlc"
brew install --cask "whatsapp"

# Browsers
brew install --cask "firefox"
brew install --cask "google-chrome"

# Fonts
brew install "font-fira-code"
brew install "font-fira-code-nerd-font"

# Remove outdated versions from the cellar.
brew cleanup
