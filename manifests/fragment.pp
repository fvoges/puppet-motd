#
# @summary
#   Defined type to add fragments to /etc/motd
#
# @param content
#   Content of the fragment
#
# @param source
#   Source of the fragment
#
# @param order
#   By default all files gets a 10_ prefix in the directory you can set it to
#   anything else using this to influence the order of the content in the file
#
# @example Simple example
#   class { 'motd':
#      motd_local_enabled => false,
#      add_puppet_warning => true,
#    }
#
#    motd::fragment { 'extra motd':
#      content => "This will be addded to /etc/motd\n",
#    }
#
#    motd::fragment { 'extra motd from template':
#      content => template('some/template.erb'),
#    }
#
define motd::fragment (
  Optional[String]        $content = undef,
  Optional[String]        $source  = undef,
  Variant[String,Integer] $order   = '10',
) {
  if ($content == undef and $source == undef) or ($content != undef and $source != undef) {
    fail('Has to specify one of content or source.')
  }

  include ::motd

  concat::fragment{"motd_fragment_${name}":
    target  => $motd::motd_file,
    content => $content,
    source  => $source,
    order   => $order,
  }
}
