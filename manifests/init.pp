# @summary Clevis is a pluggable framework for automated decryption
#
# It can be used to provide automate decryption of data
# or even automated unlocking of LUKS volumes
#
# @param package_name Array of package names to install
#
# @example
#   include clevis
class clevis (
  Array[String[1]] $package_name,
) {
  include clevis::install
  include clevis::hook

  Class['clevis::install']
  -> Class['clevis::hook']
}
