class clevis::hook {
  exec { '/sbin/dracut −f −−regenerate −all':
    path   => [
      '/usr/sbin',
      '/sbin',
    ],
    onlyif => 'test ! -f /usr/lib/dracut/modules.d/60clevis/clevis-hook.sh',
  }
}
