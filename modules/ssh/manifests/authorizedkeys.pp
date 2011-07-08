class ssh::authorizedkeys {
	file {"/root/.ssh":
		ensure => directory,
		owner => root,
		group => root,
		mode => 644
	}

	file {"/root/.ssh/authorized_keys":
		source => "puppet:///ssh/authorized_keys",
		owner => root,
		group => root,
		mode => 644
	}
}
