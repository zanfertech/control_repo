class profile::galera_cluster {

  include profile::mysql_wsrep_yum_repo
  include profile::galera_yum_repo

  exec { 'upgrade':
    command => "/usr/bin/yum upgrade mysql-wsrep-libs-compat-5.7",
    unless  => "/usr/bin/rpm -qa | grep mysql-wsrep",
    require => Yumrepo['mysql-wsrep'],
  }

  package {'mysql-wsrep-5.7':
    ensure => installed,
    require => Yumrepo['mysql-wsrep'],
  }
  
  package {'galera-3':
    ensure => installed,
    require => Yumrepo['galera'],
  }
  
  file {'/etc/my.cnf':
    ensure => file,
    source => 'puppet:///modules/mysql-wsrep/my.cnf',
    require => Package['mysql-wsrep-5.7'],
  }
  
  service {'mysqld':
    ensure => 'running',
    enable => 'true',
    require => File['/etc/my.cnf'],
  }
}
  
  
  
  
