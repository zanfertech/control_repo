class profile::gitlab {
  include gitlab
  class { 'gitlab':
  }
}
