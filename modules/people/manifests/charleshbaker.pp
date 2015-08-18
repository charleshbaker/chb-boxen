class people::charleshbaker {

  include atom # requires atom module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include textmate
#  include textwrangler
  include zsh   # requires zsh module in Puppetfile

  $no_sudo_cask_packages = [
    'adium',
    'amazon-workspaces',
    'dropbox',
    'evernote',
    'clipmenu',
    'firefox',
    'flux',
    'gimp',
    'hipchat',
    'iterm2',
    'quicksilver',
    'textwrangler',
    'vagrant',
    'virtualbox',
    'vlc',
    'vmware-fusion',
    'vmware-horizon-client',
  ]

  ## Install these with Cask - http://caskroom.io
#  $cask_packages = [
#    'github-desktop',
#    'sourcetree',
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
