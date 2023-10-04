# @summary clevis::hook class used by clevis main class only.
# @api private
class clevis::hook {
  assert_private()
  exec { '/sbin/dracut -f --regenerate -all':
    path     => [
      '/usr/sbin',
      '/sbin',
    ],
    onlyif   => 'test ! -f /usr/lib/dracut/modules.d/60clevis/clevis-hook.sh',
    provider => 'shell',
  }
}
