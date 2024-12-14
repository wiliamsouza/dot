local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	default_prog = { "/bin/bash" },
	default_cursor_style = "SteadyBar",
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	window_decorations = "RESIZE",
	check_for_updates = false,
	use_fancy_tab_bar = true,
	tab_bar_at_bottom = true,
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrainsMonoNL Nerd Font"),
	font_size = 12,
	enable_tab_bar = false,
	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
}

return config
