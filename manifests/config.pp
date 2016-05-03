class git_daemon::config inherits git_daemon {

  file { '/etc/default/git-daemon':
    ensure  => 'file',
    content => template("${module_name}/git-daemon.default.erb")
  }
}
