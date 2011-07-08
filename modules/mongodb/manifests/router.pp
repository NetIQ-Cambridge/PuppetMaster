class mongodb::router inherits mongodb::package {
        file { "/etc/init.d/mongos":
                source => "puppet:///mongodb/router/init",
                mode => 755
        }
        service { "mongos": ensure => running,
		  require => [Package["mongodb"], File["/etc/init.d/mongos"]] }
}
