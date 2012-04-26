# = Class: pdns-recursor
# This class manages pdns-recursor and it's configuration
#
# == Parameters:
# See pdns-recursor for more info on each parameter.
#
# == Sample Usage:
# This class is useful for managing the whole of pdns-recursor through a single interface. There are no require parameters.
# 
# class { 'pdns-recursor': }

class pdns-recursor ( 
  $aaaa_additional_processing = $aaaa_additional_processing,
  $allow_from                 = $allow_from,
  $allow_from_file            = $allow_from_file,
  $auth_can_lower_ttl         = $auth_can_lower_ttl,
  $auth_zones                 = $auth_zones,
  $chroot                     = $chroot,
  $client_tcp_timeout         = $client_tcp_timeout,
  $config_dir                 = $config_dir,
  $daemon                     = $daemon,
  $delegation_only            = $delegation_only,
  $disable_edns               = $disable_edns,
  $disable_edns_ping          = $disable_edns_ping,
  $disable_packetcache        = $disable_packetcache,
  $dont_query                 = $dont_query,
  $entropy_source             = $entropy_source,
  $export_etc_hosts           = $export_etc_hosts,
  $forward_zones              = $forward_zones,
  $forward_zones_file         = $forward_zones_file,
  $forward_zones_recurse      = $forward_zones_recurse,
  $hint_file                  = $hint_file,
  $ignore_rd_bit              = $ignore_rd_bit,
  $local_address              = $local_address,
  $local_port                 = $local_port,
  $log_common_errors          = $log_common_errors,
  $logging_facility           = $logging_facility,
  $lua_dns_script             = $lua_dns_script,
  $max_cache_entries          = $max_cache_entries,
  $max_cache_ttl              = $max_cache_ttl,
  $max_mthreads               = $max_mthreads,
  $max_negative_ttl           = $max_negative_ttl,
  $max_packetcache_entries    = $max_packetcache_entries,
  $max_tcp_clients            = $max_tcp_clients,
  $max_tcp_per_client         = $max_tcp_per_client,
  $network_timeout            = $network_timeout,
  $no_shuffle                 = $no_shuffle,
  $package                    = $package,
  $packetcache_servfail_ttl   = $packetcache_servfail_ttl,
  $packetcache_ttl            = $packetcache_ttl,
  $pdns_distributes_queries   = $pdns_distributes_queries,
  $query_local_address        = $query_local_address,
  $query_local_address6       = $query_local_address6,
  $quiet                      = $quiet,
  $remotes_ringbuffer_entries = $remotes_ringbuffer_entries,
  $serve_rfc1918              = $serve_rfc1918,
  $server_id                  = $server_id,
  $service                    = $service,
  $setgid                     = $setgid,
  $setuid                     = $setuid,
  $single_socket              = $single_socket,
  $soa_minimum_ttl            = $soa_minimum_ttl,
  $socket_dir                 = $socket_dir,
  $socket_group               = $socket_group,
  $socket_mode                = $socket_mode,
  $socket_owner               = $socket_owner,
  $spoof_nearmiss_max         = $spoof_nearmiss_max,
  $stack_size                 = $stack_size,
  $threads                    = $threads,
  $trace                      = $trace,
  $version_string             = $version_string
) inherits pdns-recursor::defaults {

  Pdns-recursor::Anchor["${module_name}::begin"] -> Class["${module_name}::package"] -> Class["${module_name}::config"] -> Class["${module_name}::service"] -> Pdns-recursor::Anchor["${module_name}::end"]

  pdns-recursor::anchor { "${module_name}::begin": }

  class { "${module_name}::package":
    package => $package
  }

  class { "${module_name}::config":
    aaaa_additional_processing => $aaaa_additional_processing,
    allow_from                 => $allow_from,
    allow_from_file            => $allow_from_file,
    auth_can_lower_ttl         => $auth_can_lower_ttl,
    auth_zones                 => $auth_zones,
    chroot                     => $chroot,
    client_tcp_timeout         => $client_tcp_timeout,
    config_dir                 => $config_dir,
    daemon                     => $daemon,
    delegation_only            => $delegation_only,
    disable_edns               => $disable_edns,
    disable_edns_ping          => $disable_edns_ping,
    disable_packetcache        => $disable_packetcache,
    dont_query                 => $dont_query,
    entropy_source             => $entropy_source,
    export_etc_hosts           => $export_etc_hosts,
    forward_zones              => $forward_zones,
    forward_zones_file         => $forward_zones_file,
    forward_zones_recurse      => $forward_zones_recurse,
    hint_file                  => $hint_file,
    ignore_rd_bit              => $ignore_rd_bit,
    local_address              => $local_address,
    local_port                 => $local_port,
    log_common_errors          => $log_common_errors,
    logging_facility           => $logging_facility,
    lua_dns_script             => $lua_dns_script,
    max_cache_entries          => $max_cache_entries,
    max_cache_ttl              => $max_cache_ttl,
    max_mthreads               => $max_mthreads,
    max_negative_ttl           => $max_negative_ttl,
    max_packetcache_entries    => $max_packetcache_entries,
    max_tcp_clients            => $max_tcp_clients,
    max_tcp_per_client         => $max_tcp_per_client,
    network_timeout            => $network_timeout,
    no_shuffle                 => $no_shuffle,
    packetcache_servfail_ttl   => $packetcache_servfail_ttl,
    packetcache_ttl            => $packetcache_ttl,
    pdns_distributes_queries   => $pdns_distributes_queries,
    query_local_address        => $query_local_address,
    query_local_address6       => $query_local_address6,
    quiet                      => $quiet,
    remotes_ringbuffer_entries => $remotes_ringbuffer_entries,
    serve_rfc1918              => $serve_rfc1918,
    server_id                  => $server_id,
    setgid                     => $setgid,
    setuid                     => $setuid,
    single_socket              => $single_socket,
    soa_minimum_ttl            => $soa_minimum_ttl,
    socket_dir                 => $socket_dir,
    socket_group               => $socket_group,
    socket_mode                => $socket_mode,
    socket_owner               => $socket_owner,
    spoof_nearmiss_max         => $spoof_nearmiss_max,
    stack_size                 => $stack_size,
    threads                    => $threads,
    trace                      => $trace,
    version_string             => $version_string
  }

  class { "${module_name}::service":
    service => $service
  }

  pdns-recursor::anchor { "${module_name}::end": }
}
