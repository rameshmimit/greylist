class greylist (
	$whitelist		= []
) {

	file { "/etc/greylistd/whitelist-hosts":
		ensure  => file,
		content => template("greylist/whitelist-hosts.erb"), 
		owner   => "root",
		group   => "root",
		mode    => 0644,
	}

}