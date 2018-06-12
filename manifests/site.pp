node default {
}
node 'centospuppetmaster' {
  include role::master_server
}
node /^centosmysql/ {
  include role::db_server
}
