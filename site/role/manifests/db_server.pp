class role::db_server {
  include profile::base
  include profile::mysql_wsrep_cluster
}
