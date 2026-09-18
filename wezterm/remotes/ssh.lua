local module = {}

function module.set_hosts(config)
	config.ssh_domains = {
		{
			name = "home-server",
			remote_address = "home-server",
		},
		{
			name = "home-server-ts",
			remote_address = "home-server-ts",
			ssh_option = {
				LocalFoward = "8006:10.0.0.202:8006",
				FowardAgent = "yes",
			},
		},
	}
end

return module
