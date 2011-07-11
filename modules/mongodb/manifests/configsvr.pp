class mongodb::configsvr inherits mongodb::package {
        file { "/etc/init.d/mongodb-configsvr":
                source => "puppet:///mongodb/configsvr/init",
                mode => 755
        }
        file { "/etc/mongodb-configsvr.conf":
                source => "puppet:///mongodb/configsvr/config",
                mode => 644
        }
        service { "mongodb-configsvr": ensure => running, subscribe => [Package["mongodb"], File["/etc/init.d/mongodb-configsvr"], File["/etc/mongodb-configsvr.conf"]] }
}
