# = Class: pdns-recursor::service
# This class manages the pdns-recursor service.
#
# == Parameters:
# $service:: Name of the pdns-recursor service. Defaults to 'pdns-recursor' (See pdns-recursor::defaults)
#
# == Sample Usage:
# If your service name is not 'pdns-recursor', simply ovver the default value for the $service parameter from the main interface:
#   classs { 'pdns-recursor::service':
#     service => 'pdns-recursor'
#   }

class pdns-recursor::service (
  $service
) {

  service { $service:
    enable => true,
    ensure => running,
    hasstatus => true
  }
}
