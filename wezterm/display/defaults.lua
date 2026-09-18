local wezterm = require("wezterm")

local module = {}

function module.set_defaults(config)
	config.color_scheme = "Tokyo Night"

	config.font = wezterm.font_with_fallback({
		"JetBrains Mono",
		"Fira Code",
		"DengXian",
	})

	config.background = {
		{
			source = {
				File = wezterm.home_dir .. "/Pictures/wallpaper/frieren.png",
			},
			hsb = { brightness = 0.1 },
		},
	}
end

return module
