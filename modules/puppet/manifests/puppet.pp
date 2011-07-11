class puppet {
        file { "/etc/puppet/auth.conf":
                source => "puppet:///puppet/auth.conf",
                mode => 644 
        }
        file { "/etc/puppet/namespaceauth.conf":
                source => "puppet:///puppet/namespaceauth.conf",
                mode => 644
        }
        service { "puppet": ensure => running,
                 subscribe => [File["/etc/puppet/auth.conf"], File["/etc/puppet/namespaceauth.conf"]] }

}
