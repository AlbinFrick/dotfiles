-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.font = wezterm.font("Comic Mono")
config.font_size = 14.0
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config
