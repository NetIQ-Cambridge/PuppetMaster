node default {
	include ssh::authorizedkeys
        include mongodb::shard 
	include mongodb::router
	include mongodb::configsvr
}
