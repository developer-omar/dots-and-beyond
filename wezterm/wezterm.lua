-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

local theme = "Tokyo Night (Gogh)" -- LiquidCarbon or Bamboo
config.font = wezterm.font("FiraCode Nerd Font") -- Font for our terminal
-- config.color_scheme = 'Glacier' -- Theme of terminal
config.color_scheme = theme
config.line_height = 1.0

config.enable_tab_bar = false --Disable tab bar
config.enable_scroll_bar = true -- Enable scrollbar
-- config.window_decorations = "RESIZE" -- Hide title bari

-- CHANGING KEY ASSIGNMENTS --
config.disable_default_key_bindings = true
config.quote_dropped_files = "SpacesOnly"
config.keys = {
	-- General --
	-- CTRL-SHIFT-l activates the debug overlay
	{
		key = "L",
		mods = "CTRL",
		action = wezterm.action.ShowDebugOverlay,
	},
	{
		key = "V",
		mods = "CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},

	-- Drag and Drop of Directories --

	-- Manage of Panels --
	-- {
	-- 	key = "d",
	-- 	mods = "CTRL|ALT",
	-- 	action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	-- },
	-- {
	-- 	key = "r",
	-- 	mods = "CTRL|ALT",
	-- 	action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	-- },
	-- {
	-- 	key = "w",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.CloseCurrentPane({ confirm = true }),
	-- },
	-- {
	-- 	key = "w",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.CloseCurrentPane({ confirm = true }),
	-- },
	-- {
	-- 	key = "UpArrow",
	-- 	mods = "ALT|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	-- },
	-- {
	-- 	key = "DownArrow",
	-- 	mods = "ALT|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	-- },
	-- {
	-- 	key = "LeftArrow",
	-- 	mods = "ALT|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	-- },
	-- {
	-- 	key = "RightArrow",
	-- 	mods = "ALT|SHIFT",
	-- 	action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	-- },
	-- {
	-- 	key = "UpArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Up"),
	-- },
	-- {
	-- 	key = "DownArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Down"),
	-- },
	-- {
	-- 	key = "LeftArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Left"),
	-- },
	-- {
	-- 	key = "RightArrow",
	-- 	mods = "ALT",
	-- 	action = wezterm.action.ActivatePaneDirection("Right"),
	-- },

	-- Manage of Tabs --
	-- {
	-- 	key = "q",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.CloseCurrentTab({ confirm = true }),
	-- },
	-- {
	-- 	key = "PageUp",
	-- 	mods = "CTRL",
	-- 	action = wezterm.action.ActivateTabRelative(-1),
	-- },
	-- {
	-- 	key = "PageDown",
	-- 	mods = "CTRL",
	-- 	action = wezterm.action.ActivateTabRelative(1),
	-- },
	-- {
	-- 	key = "PageUp",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.MoveTabRelative(-1),
	-- },
	-- {
	-- 	key = "PageDown",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.MoveTabRelative(1),
	-- },
	-- {
	-- 	key = "t",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	-- },
	-- -- Create a new tab in the default domain
	-- {
	-- 	key = "t",
	-- 	mods = "CTRL|SHIFT",
	-- 	action = wezterm.action.SpawnTab("DefaultDomain"),
	-- },
	-- {
	-- 	key = "n",
	-- 	mods = "SHIFT|CTRL",
	-- 	action = wezterm.action.SpawnWindow,
	-- },
}

-- TAB BAR --
-- local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
-- tabline.setup({
-- 	options = {
-- 		icons_enabled = true,
-- 		theme = theme,
-- 		color_overrides = {},
-- 		section_separators = {
-- 			left = wezterm.nerdfonts.ple_right_half_circle_thick,
-- 			right = wezterm.nerdfonts.ple_left_half_circle_thick,
-- 		},
-- 		component_separators = {
-- 			left = wezterm.nerdfonts.ple_right_half_circle_thin,
-- 			right = wezterm.nerdfonts.ple_left_half_circle_thin,
-- 		},
-- 		tab_separators = {
-- 			left = wezterm.nerdfonts.ple_right_half_circle_thick,
-- 			right = wezterm.nerdfonts.ple_left_half_circle_thick,
-- 		},
-- 	},
-- 	sections = {
-- 		tabline_a = { "mode" },
-- 		tabline_b = { "workspace" },
-- 		tabline_c = { " " },
-- 		tab_active = {
-- 			"index",
-- 			{ "parent", padding = 0 },
-- 			"/",
-- 			{ "cwd", padding = { left = 0, right = 1 } },
-- 			{ "zoomed", padding = 0 },
-- 		},
-- 		tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
-- 		tabline_x = { " " },
-- 		tabline_y = { "datetime" },
-- 		tabline_z = { "hostname" },
-- 	},
-- 	extensions = {},
-- })

config.window_padding = {
	top = 0,
	right = 2,
	bottom = 0,
	left = 2,
}

-- integration with zellij
config.default_prog = { "zellij", "-l", "welcome" }

return config
