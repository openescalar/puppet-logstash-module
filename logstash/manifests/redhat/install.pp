class logstash::redhat::install ( 

) {

  package {

    'logstash':
      ensure  => "${logstash::version}",
      require => Package['java'];
    'java':
      ensure  => "${logstash::javaversion}"; 

  }

}
