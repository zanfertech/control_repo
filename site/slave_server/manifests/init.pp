class slave_server {
  file {'slave_template_file':
  content => template('slave_server/slave_template_file.erb'),
  path    => '/root/info',
  }
}
