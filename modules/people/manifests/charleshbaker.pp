class people::charleshbaker {

  include atom # requires atom module in Puppetfile
  include brewcask # requires brewcask module in Puppetfile
  include chrome   # requires chrome module in Puppetfile
  include textmate::textmate2::beta
  include tmux
  include zsh   # requires zsh module in Puppetfile

  ## Install these with Cask - http://caskroom.io
  $cask_packages = [
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


#  $cask_packages = [
#    'github-desktop',
#    'sourcetree',
#  ]

  package { $cask_packages:
    ensure       => present,
    provider     => 'brewcask',
  }

}
