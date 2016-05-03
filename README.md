# git_daemon

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with git_daemon](#setup)
    * [Beginning with git_daemon](#beginning-with-git_daemon)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)

## Overview

A puppet module to install and manage a standalone git daemon.

## Module Description

This module install and configures git daemon as a standalone service.

## Setup

### Beginning with git_daemon

```puppet
class { 'git_daemon':
  base_path => '/path/to/repositories'
}
```

```puppet
class { 'git_daemon':
  ...
  enable_upload_archive => true,
  init_timeout          => 60
  ...
}
```

## Reference

### Parameters

#### Git
##### `user`
Specify the user that will be used to run the daemon. Default: 'gitdaemon'
##### `base_path`
Specify the location of repositories. Default: '/var/lib'
##### `init_timeout`
Specify the timeout in seconds between the moment the connection is established and the client request is received. Default: 30
##### `timeout`
Specify the timeout in seconds for specific client sub-requests. Default: 3600
##### `export_all`
Allow pulling from all directories that look like Git repositories. Default: false
##### `enable_upload_archive`
This serves git archive --remote. Default: false
##### `enable_receive_pack`
Allow anonymous push. Default: false
##### `interpolated_path`
Template that can be used to dynamically construct alternate paths (a.k.a. virtual hosting). Default: ''

## Limitations

Currently only tested on Ubuntu distributions.
