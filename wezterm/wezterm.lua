-- Pull in the wezterm API
local wezterm = require("wezterm")
local ssh = require("remotes.ssh")
local disable = require("misc.disable")
local bindings = require("misc.bindings")
local display_defaults = require("display.defaults")
-- This will hold the configuration.

local config = wezterm.config_builder()
config.warn_about_missing_glyphs = false
config.max_fps = 120

display_defaults.set_defaults(config)
ssh.set_hosts(config)
disable.disable_keys(config)
bindings.set_custom_bindings(config)

return config
