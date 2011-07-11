class base {
	include mongodb::shard
        include mongodb::router
}

class super inherits base {
        include mongodb::configsvr
}

node default {
	include base
}

node 'ip-10-176-30-36.us-west-1.compute.internal' {
        include super
}
