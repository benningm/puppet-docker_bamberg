class docker_bamberg::webserver {
  require docker_bamberg::content

  class { 'nginx': }
  nginx::resource::vhost { 'docker-bamberg.de':
      www_root => '/data/htdocs',
  }
}
