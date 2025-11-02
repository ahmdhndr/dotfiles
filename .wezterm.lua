-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Hold the configuration
local config = wezterm.config_builder()

-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font Mono",
	"Symbols Nerd Font Mono",
})

config.font_size = 13

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.color_scheme = "Tokyo Night (Gogh)"

config.window_background_opacity = 0.95

return config
