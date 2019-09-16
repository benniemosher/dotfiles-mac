function brew-update
  brew update; echo 'Outdated: '; brew outdated; brew upgrade; brew cu --all --cleanup --yes; brew cleanup; brew doctor;
end
