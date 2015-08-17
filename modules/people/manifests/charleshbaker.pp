class people::charleshbaker {

  include zsh   # requires zsh module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile

  ## Install these with Cask - http://caskroom.io
  $cask_packages = [
    'evernote',
    'firefox',
    'flux',
    'github',
    'hipchat',
    'iterm2',
    'vagrant',
    'virtualbox',
    'vlc',
  ]

  package { $cask_packages:
    ensure        => present,
    provider      => 'brewcask',
    require       => Sudoers[$::boxen_user],
  }

}
