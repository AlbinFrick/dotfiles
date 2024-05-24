-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

-- Window
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 8

config.enable_tab_bar = false

config.font = wezterm.font("Comic Mono")
config.font_size = 14.0
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config
