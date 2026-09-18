local wezterm = require("wezterm")
local module = {}

function module.set_custom_bindings(config)
	config.keys = {
		{
			key = ",",
			mods = "CTRL|SHIFT",
			action = wezterm.action.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, plane, line)
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},
	}
end

return module
