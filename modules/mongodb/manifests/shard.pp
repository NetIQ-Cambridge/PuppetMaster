class mongodb::shard inherits mongodb::package {
        file { "/etc/init.d/mongodb":
                source => "puppet:///mongodb/shard/init",
                mode => 755
        }
        file { "/etc/mongodb.conf":
                source => "puppet:///mongodb/shard/config",
                mode => 644
        }
        service { "mongodb": ensure => running,
                 require => [Package["mongodb"], File["/etc/mongodb.conf"], File["/etc/init.d/mongodb"]] }

}
