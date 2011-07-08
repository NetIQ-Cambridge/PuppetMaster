class mongodb::package {

	package { "glibc-locale": ensure => installed }
        package { "mongodb": ensure => installed,
		 require => Package["glibc-locale"] }
}
