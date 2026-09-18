local wezterm = require("wezterm")
local module = {}

function module.disable_keys(config)
	-- NOTE: Disable because it conflicts with Hyprland binding for fullscreen
	config.keys = {
		{
			key = "f",
			mods = "CMD",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{
			key = "f",
			mods = "SUPER",
			action = wezterm.action.DisableDefaultAssignment,
		},
	}
end

return module
