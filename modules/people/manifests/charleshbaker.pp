class people::charleshbaker {

  include zsh   # requires zsh module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile

  $no_sudo_cask_packages = [
    'adium',
    'amazon-workspaces',
    'atom',
    'dropbox',
    'evernote',
    'clipmenu',
    'firefox',
    'flux',
    'hipchat',
    'iterm2',
    'quicksilver',
    'textmate',
    'textwrangler',
    'vlc',
  ]

  ## Install these with Cask - http://caskroom.io
#  $cask_packages = [
#    'github-desktop',
#    'sourcetree',
#    'vagrant',
#    'virtualbox',
#  ]
#
#  package { $cask_packages:
#    ensure        => present,
#    provider      => 'brewcask',
#    require       => Sudoers[$::boxen_user],
#  }

  package { $no_sudo_cask_packages:
    ensure       => present,
    provider     => 'brewcask',
  }

}
