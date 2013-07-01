
class resolvconf(
  $domain      = false,
  $nameservers = [],
  $search      = []) {

  include resolvconf::params

  File {
    ensure  => present,
    mode    => '0644',
    owner   => $resolvconf::params::owner,
    group   => $resolvconf::params::group,
  }

  file { "${resolvconf::params::prefix}/resolv.conf":
    content => template("resolvconf/resolvconf.erb")
  }

}
