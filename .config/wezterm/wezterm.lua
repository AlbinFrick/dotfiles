-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Make zen-mode work in neovim
wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	if name == "ZEN_MODE" then
		local incremental = value:find("+")
		local number_value = tonumber(value)
		if incremental ~= nil then
			while number_value > 0 do
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				number_value = number_value - 1
			end
			overrides.enable_tab_bar = false
		elseif number_value < 0 then
			window:perform_action(wezterm.action.ResetFontSize, pane)
			overrides.font_size = nil
			overrides.enable_tab_bar = true
		else
			overrides.font_size = number_value
			overrides.enable_tab_bar = false
		end
	end
	window:set_config_overrides(overrides)
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

-- Window
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.95
-- config.macos_window_background_blur = 8

config.enable_tab_bar = false

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 15.0
config.line_height = 1.3

-- config.keys = {
-- 	-- Turn off the default CMD-m Hide action, allowing CMD-m to
-- 	-- be potentially recognized and handled by the tab
-- 	{
-- 		key = "m",
-- 		mods = "CMD",
-- 		action = wezterm.action.DisableDefaultAssignment,
-- 	},
-- }

-- and finally, return the configuration to wezterm
return config
