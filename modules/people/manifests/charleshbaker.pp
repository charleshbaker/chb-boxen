class people::charleshbaker {

  include zsh   # requires zsh module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile

  $no_sudo_cask_packages = [
    'dropbox',
    'evernote',
    'clipmenu',
  ]

  ## Install these with Cask - http://caskroom.io
  $cask_packages = [
    'firefox',
    'flux',
    'github',
    'hipchat',
    'iterm2',
    'quicksilver',
    'vagrant',
    'virtualbox',
    'vlc',
  ]

  package { $cask_packages:
    ensure        => present,
    provider      => 'brewcask',
    require       => Sudoers[$::boxen_user],
  }

  package { $no_sudo_cask_packages = [
    ensure       => present,
    provider     => 'brewcask',
  }

}
