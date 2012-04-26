# = Class: pdns-recursor::package
# This class manages the pdns-recursor package
#
# == Parameters:
# $package:: Name(s) of the pdns-recursor package(s). Defaults to 'pdns-recursor'.
#
# == Sample Usage:
# The $package parameter can be changed from the main pdns-recursor interface:
#   class { 'pdns-recursor':
#     package => 'pdns-recursor-custom'
#   }

class pdns-recursor::package (
  $package
) {
  package { $package:
    ensure => present
  }
}
