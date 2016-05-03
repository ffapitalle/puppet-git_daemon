# == Class: git_daemon
#
# Full description of class git_daemon here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'git_daemon':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class git_daemon (
  $package_ensure = $git_daemon::params::package_ensure,
  $package_name   = $git_daemon::params::package_name,
  $service_ensure = $git_daemon::params::service_ensure,
  $service_enable = $git_daemon::params::service_enable,
  $service_name   = $git_daemon::params::service_name,
  $user           = $git_daemon::params::user,
  $base_path      = $git_daemon::params::base_path

) {

  anchor { 'git_daemon::begin': } ->
  class { '::git_daemon::install': } ->
  class { '::git_daemon::config': } ~>
  class { '::git_daemon::service': } ->
  anchor { 'git_daemon::end': }

}
