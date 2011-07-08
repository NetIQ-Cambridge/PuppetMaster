node default {
	include ssh::authorizedkeys
        include mongodb::shard 
	include mongodb::router
}

node 'mongodb01.qalab.cam.novell.com' {
        include mongodb::configsvr
}
