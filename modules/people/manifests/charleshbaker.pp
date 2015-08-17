class people::charleshbaker {

  include zsh   # requires zsh module in Puppetfile
  include chrome   # requires chrome module in Puppetfile

  package { 'evernote': provider => 'brewcask' }

}
