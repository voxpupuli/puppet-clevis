# clevis::install class
# used by main clevis class only.
class clevis::install {
  assert_private()
  package { $clevis::package_name:
    ensure => present,
  }
}
