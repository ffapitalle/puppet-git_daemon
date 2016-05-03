class git_daemon::install inherits git_daemon {

  package { 'git_daemon':
    ensure => $git_daemon::package_ensure,
    name   => $git_daemon::package_name
  }

}
