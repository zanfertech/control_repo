class profile::slave_tasks{
  package {'vim':
    ensure => installed,
  }
  
  package {'dnsmasq':
    ensure => installed,
  }
  
  package {'dnsmasq-utils':
    ensure => installed,
  }
}
