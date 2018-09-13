class profile::base {
  user {'admin':
    ensure => present,
  }
  package {'bind-utils':
    ensure => installed,
  }
}
