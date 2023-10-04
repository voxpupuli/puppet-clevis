# @summary clevis::install class used by clevis main class only.
# @api private
class clevis::install {
  assert_private()
  package { $clevis::package_name:
    ensure => present,
  }
}
