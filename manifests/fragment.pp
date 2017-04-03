# == Define: motd::fragment
#
#   Defined type to add fragments to /etc/motd.
#
# === Parameters
#
# [*content*]
#   Content of the fragment. Default value: undef.
#
# [*source*]
#   Source of the fragment. Default value: undef.
#
# [*order*]
#   By default all files gets a 10_ prefix in the directory you can set it to
#   anything else using this to influence the order of the content in the file
#
define motd::fragment(
  Optional[String] $content = undef,
  Optional[String] $source  = undef,
  Integer $order   = 10,
) {
  if ($content == undef and $source == undef) or ($content != undef and $source != undef) {
    fail('Has to specify one of content or source.')
  }
  include motd
  concat::fragment{"motd_fragment_${name}":
    target  => $motd::motd_file,
    content => $content,
    source  => $source,
    order   => $order,
  }
}
# EOF
