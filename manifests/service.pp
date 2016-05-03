class git_daemon::service inherits git_daemon {
  service { 'git_daemon':
    ensure => $git_daemon::service_ensure,
    enable => $git_daemon::service_enable,
    name   => $git_daemon::service_name
  }
}
