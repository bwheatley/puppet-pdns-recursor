# = Class: pdns-recursor::config
# This class manages the pdns-recursor config file
#
# == Parameters:
# $config_dir:: Path to the pdns-recursor configuration directory [String]
#
# The following parameters are simply values foudn within the pdns-recursor config. Each aprameter has a statically declared type, which is munged in the template. See the configuration file or template for more information on each parameter and the actual values accepted.
#
# $aaaa_additional_processing:: [Boolean]
# $allow_from:: [Array]
# $allow_from_file:: [Boolean]
# $auth_can_lower_ttl:: [String]
# $auth_zones:: [String]
# $chroot:: [String]
# $client_tcp_timeout:: [Integer]
# $config_dir:: [String]
# $daemon:: [String]
# $delegation_only:: [String]
# $disable_edns:: [String]
# $disable_edns_ping:: [String]
# $disable_packetcache:: [String]
# $dont_query:: [Array]
# $entropy_source:: [String]
# $export_etc_hosts:: [String]
# $forward_zones:: [String]
# $forward_zones_file:: [String]
# $forward_zones_recurse:: [String]
# $hint_file:: [String]
# $ignore_rd_bit:: [String]
# $local_address:: [Integer]
# $local_port:: [Integer]
# $log_common_errors:: [String]
# $logging_facility:: [String]
# $lua_dns_script:: [String]
# $max_cache_entries:: [Integer]
# $max_cache_ttl:: [Integer]
# $max_mthreads:: [Integer]
# $max_negative_ttl:: [Integer]
# $max_packetcache_entries:: [Integer]
# $max_tcp_clients:: [Integer]
# $max_tcp_per_client:: [Integer]
# $network_timeout:: [Integer]
# $no_shuffle:: [String]
# $packetcache_servfail_ttl:: [Integer]
# $packetcache_ttl:: [Integer]
# $pdns_distributes_queries:: [String]
# $query_local_address:: [String]
# $query_local_address6:: [String]
# $quiet:: [String]
# $remotes_ringbuffer_entries:: [Integer]
# $serve_rfc1918:: [String]
# $server_id:: [String]
# $setgid:: [String]
# $setuid:: [String]
# $single_socket:: [String]
# $soa_minimum_ttl:: [Integer]
# $socket_dir:: [String]
# $socket_group:: [String]
# $socket_mode:: [String]
# $socket_owner:: [String]
# $spoof_nearmiss_max:: [Integer]
# $stack_size:: [Integer]
# $threads:: [Integer]
# $trace:: [String]
# $version_string:: [String]

class pdns-recursor::config (
  $aaaa_additional_processing,
  $allow_from,
  $allow_from_file,
  $auth_can_lower_ttl,
  $auth_zones,
  $chroot,
  $client_tcp_timeout,
  $config_dir,
  $daemon,
  $delegation_only,
  $disable_edns,
  $disable_edns_ping,
  $disable_packetcache,
  $dont_query,
  $entropy_source,
  $export_etc_hosts,
  $forward_zones,
  $forward_zones_file,
  $forward_zones_recurse,
  $hint_file,
  $ignore_rd_bit,
  $local_address,
  $local_port,
  $log_common_errors,
  $logging_facility,
  $lua_dns_script,
  $max_cache_entries,
  $max_cache_ttl,
  $max_mthreads,
  $max_negative_ttl,
  $max_packetcache_entries,
  $max_tcp_clients,
  $max_tcp_per_client,
  $network_timeout,
  $no_shuffle,
  $packetcache_servfail_ttl,
  $packetcache_ttl,
  $pdns_distributes_queries,
  $query_local_address,
  $query_local_address6,
  $quiet,
  $remotes_ringbuffer_entries,
  $serve_rfc1918,
  $server_id,
  $setgid,
  $setuid,
  $single_socket,
  $soa_minimum_ttl,
  $socket_dir,
  $socket_group,
  $socket_mode,
  $socket_owner,
  $spoof_nearmiss_max,
  $stack_size,
  $threads,
  $trace,
  $version_string
) {

  file { "${config_dir}/recursor.conf":
    ensure  => file,
    content => template("${module_name}/recursor.conf.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    notify  => Service["${module_name}"]
  }
}
