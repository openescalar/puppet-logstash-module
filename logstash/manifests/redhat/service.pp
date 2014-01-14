class logstash::redhat::service (

) {

  require logstash::redhat::config

  $ensure = $logstash::start ? {true    => running, default => stopped}

  service {
 
   'logstash':
      ensure => $ensure,
      enable => $logstash::enable,

  }

}
