
class resolvconf::params {

  case $::operatingsystem {

    default: {
      $owner  = 'root'
      $group  = 'root'
      $prefix = '/etc'
    }

  }
  
}

