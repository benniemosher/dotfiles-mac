function brew-update
  brew update; echo 'Outdated: '; brew outdated; brew upgrade; brew cleanup; brew doctor;
end
