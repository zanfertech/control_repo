node default {
}
node 'centospuppetmaster' {
  include role::master_server
}
node /^centosmysql/ {
  include role::db_server
}
node 'centospuppetslave' {
  include role::db_server
}
node 'centosmysql05' {
  include role::db_server
}
