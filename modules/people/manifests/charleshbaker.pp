class people::charleshbaker {

  include atom # requires atom module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include textmate
#  include textwrangler
  include zsh   # requires zsh module in Puppetfile

  $no_sudo_cask_packages = [
    'adium',
    'dropbox',
    'evernote',
    'clipmenu',
    'firefox',
    'flux',
    'hipchat',
    'iterm2',
    'quicksilver',
    'vlc',
  ]

  ## Install these with Cask - http://caskroom.io
#  $cask_packages = [
#    'amazon-workspaces',
#    'atom',
#    'github-desktop',
#    'sourcetree',
#    'textmate',
#    'textwrangler',
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
