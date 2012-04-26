# = Class pdns-recursor::defaults
# This class provides defauilt values for pdns-recursor subclasses

class pdns-recursor::defaults {

  # pdns-recursor::package
  $package = 'pdns-recursor'

  # pdns-recursor::service
  $service = 'pdns-recursor'

  # pdns-recursor::config
  $aaaa_additional_processing = false
  $allow_from                 = ['127.0.0.1/8']
  $allow_from_file            = false
  $auth_can_lower_ttl         = 'off'
  $auth_zones                 = false
  $chroot                     = false
  $client_tcp_timeout         = 2
  $config_dir                 = '/etc/pdns-recursor'
  $daemon                     = 'yes'
  $delegation_only            = false
  $disable_edns               = false
  $disable_edns_ping          = false
  $disable_packetcache        = 'no'
  $dont_query                 = ['127.0.0.1/8']
  $entropy_source             = false
  $export_etc_hosts           = 'off'
  $forward_zones              = false
  $forward_zones_file         = false
  $forward_zones_recurse      = false
  $hint_file                  = false
  $ignore_rd_bit              = 'off'
  $local_address              = '127.0.0.1'
  $local_port                 = 53
  $log_common_errors          = 'yes'
  $logging_facility           = 0
  $lua_dns_script             = false
  $max_cache_entries          = 1000000
  $max_cache_ttl              = 86400
  $max_mthreads               = 2048
  $max_negative_ttl           = 3600
  $max_packetcache_entries    = 500000
  $max_tcp_clients            = 128
  $max_tcp_per_client         = 0
  $network_timeout            = 1500
  $no_shuffle                 = 'off'
  $packetcache_servfail_ttl   = 60
  $packetcache_ttl            = 3600
  $pdns_distributes_queries   = 'no'
  $query_local_address        = '0.0.0.0'
  $query_local_address6       = false
  $quiet                      = 'on'
  $remotes_ringbuffer_entries = 0
  $serve_rfc1918              = 'on'
  $server_id                  = false
  $setgid                     = false
  $setuid                     = false
  $single_socket              = 'off'
  $soa_minimum_ttl            = 0
  $socket_dir                 = '/var/run'
  $socket_group               = false
  $socket_mode                = false
  $socket_owner               = false
  $spoof_nearmiss_max         = 20
  $stack_size                 = 200000
  $threads                    = 2
  $trace                      = 'off'
  $version_string             = false
}
