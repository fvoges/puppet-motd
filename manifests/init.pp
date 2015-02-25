# == Class: motd
#
# This is a simple class that manages /etc/motd using puppetlabs-concat
#
# === Parameters
#
# [*motd_file*]
#    MOTD file. Default value: '/etc/motd'
#
# [*motd_local_enabled*]
#   If true, Puppet will append the contents of /etc/motd.local.
#   The contents of /etc/motd.local are not managed by Puppet.
#
# [*add_puppet_warning*]
#   Adds a warning to the top of the MOTD ("${fqdn} is managed by Puppet").
#
# === Examples
#
#  class { motd:
#    motd_local_enabled => false,
#    add_puppet_warning => true,
#  }
#
# === Authors
#
# Federico Voges <fvoges@gmail.com>
#
# === Copyright
#
# Copyright 2014 Federico Voges, unless otherwise noted.
#
class motd (
  $motd_file = '/etc/motd',
  $motd_local_enabled = true,
  $add_puppet_warning = false,
) {
  # Validate all the input! o/
  validate_string($motd_file)
  validate_bool($motd_local_enabled)
  validate_bool($add_puppet_warning)

  concat{$motd_file:
    owner => 'root',
    group => '0',
    mode  => '0644',
  }

  if $add_puppet_warning {
    concat::fragment{'motd_puppet_warning':
      target  => $motd_file,
      content => "${::fqdn} is managed by Puppet.\n",
      order   => '00',
    }
  }

  if $motd_local_enabled {
    concat::fragment{'motd_local':
      ensure => '/etc/motd.local',
      target => $motd_file,
      order  => '99',
    }
  }
}
