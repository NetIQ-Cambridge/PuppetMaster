class mongodb {

        package { "mongodb": ensure => installed }
        service { "mongodb": ensure => running, require => Package["mongodb"] }

}
