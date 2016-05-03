class git_daemon::params {

  $package_ensure = 'present'
  $package_name   = 'git-daemon-sysvinit'
  $service_ensure = 'running'
  $service_enable = true
  $service_name   = 'git-daemon'

  $user      = 'gitdaemon'
  $base_path = '/var/lib'

  $init_timeout = 30
  $timeout      = 3600
  $export_all            = false
  $enable_upload_archive = false
  $enable_receive_pack   = false
  $interpolated_path = ''
}
