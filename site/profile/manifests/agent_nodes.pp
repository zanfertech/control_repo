class profile::agent_nodes {
#  host {'centosmysql01':
#    ensure => present,
#    ip     => 192.168.50.208,
#  }
#  host {'cnetosmysql02':
#    ensure => present,
#    ip     => 192.168.50.24,
#  }
#  host {'centosmysql03':
#    ensure => present,
#    ip     => 192.168.50.73,
#  }
  host {'centospuppetslave':
    ensure => present,
    ip     => 192.168.50.27,
  }
}
