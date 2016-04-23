class docker_bamberg::content {
  package { 'jekyll':
    ensure  => present,
  }

  file { '/data' :
    ensure  => 'directory',
  } ->
  file { '/data/repo' :
    ensure  => 'directory',
  } ->
  file { '/data/htdocs' :
    ensure  => 'directory',
  } ->
  vcsrepo { '/data/repo':
    ensure     => 'latest',
    provider   => 'git',
    source     => 'https://github.com/benningm/jekyll-docker-bamberg.de.git',
  } ~>
  exec { "generate-content":
    command     => "jekyll build --destination /data/htdocs",
    cwd         => '/data/repo',
    path        => ["/bin", "/usr/bin"],
    refreshonly => 'true',
    creates     => '/data/htdocs/index.html',
    user        => 'root',
    require     => Package['jekyll'],
  }
}

