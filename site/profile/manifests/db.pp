class profile::db {

  package {'mysql-wsrep':
    ensure => installed,
    status => running,
  }
  
  file {'/etc/my.cnf':
    ensure => present,
    requires => Package(mysql-wsrep),
  }
  
  
}
