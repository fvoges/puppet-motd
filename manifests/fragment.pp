# == Define: motd::fragment
#
#   Defined type to add fragments to /etc/motd.
#
# === Parameters
#
# [*content*]
#   Content of the fragment. Default value: $title.
#
# [*order*]
#   By default all files gets a 10_ prefix in the directory you can set it to
#   anything else using this to influence the order of the content in the file
#
define motd::fragment(
  $content = $title,
  $order = 10,
) {
  concat::fragment{"motd_fragment_$name":
      target  => $motd::motd_file,
      content => $content,
      order   => $order,
  }
}
# EOF
