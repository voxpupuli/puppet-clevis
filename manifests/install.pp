class clevis::install {
  assert_private()
  package { $clevis::package_name:
    ensure => present,
  }
}
