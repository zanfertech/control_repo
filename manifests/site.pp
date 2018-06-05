node default {
}
node 'sandboxcentos' {
  include role::master_server
}
node /^centosmysql/ {
  include role::db_server
}
