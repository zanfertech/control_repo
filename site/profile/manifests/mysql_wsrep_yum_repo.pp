class profile::mysql_wsrep_yum_repo {
  yumrepo { 'mysql-wsrep':
    enabled  => 1,
    descr    => 'MySQL-wsrep',
    baseurl  => 'http://releases.galeracluster.com/mysql-wsrep-5.7.21-25.14/centos/7/x86_64/',
    gpgkey   => 'http://releases.galeracluster.com/mysql-wsrep-5.7.21-25.14/GPG-KEY-galeracluster.com',
    gpgcheck => 1,
  }
}
