-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

--/--------
-- Colors
--/--------

-- Nightfox
-- config.color_scheme = "duskfox"
-- config.color_scheme = "terafox"

-- Base16 / Gogh
-- config.color_scheme = "Afterglow (Gogh)"
-- config.color_scheme = "Apathy (base16)"
-- config.color_scheme = "Apprentice (Gogh)"
-- config.color_scheme = "Argonaut (Gogh)"
-- config.color_scheme = "Arthur (Gogh)"
-- config.color_scheme = "Atelier Cave (base16)"
-- config.color_scheme = "Atelier Estuary (base16)"
-- config.color_scheme = "Atelier Lakeside (base16)"
-- config.color_scheme = "Atlas (base16)"
-- config.color_scheme = "Ayu Dark (Gogh)"
-- config.color_scheme = "Ayu Mirage (Gogh)"
-- config.color_scheme = "Belafonte Night (Gogh)"
-- config.color_scheme = "Birds of Paradise (Gogh)"
-- config.color_scheme = "Black Metal (Bathory) (base16)"
-- config.color_scheme = "Borland (Gogh)"
-- config.color_scheme = "Brewer (base16)"
-- config.color_scheme = "Broadcast (Gogh)"
-- config.color_scheme = "Brogrammer (base16)"
-- config.color_scheme = "C64 (Gogh)"
-- config.color_scheme = "Cai (Gogh)"
-- config.color_scheme = "Ciapre (Gogh)"
-- config.color_scheme = "Crayon Pony Fish (Gogh)"
-- config.color_scheme = "Darcula (base16)"
-- config.color_scheme = "Dark Violet (base16)"
-- config.color_scheme = "Dimmed Monokai (Gogh)"
-- config.color_scheme = "Equilibrium Gray Dark (base16)"
config.color_scheme = "Gooey (Gogh)"
-- config.color_scheme = "Grayscale Dark (base16)"
-- config.color_scheme = "Harper (Gogh)"
-- config.color_scheme = "Hemisu Dark (Gogh)"
-- config.color_scheme = "Oxocarbon Dark (Gogh)"
-- config.color_scheme = "Terminix Dark (Gogh)"
-- config.color_scheme = "Wombat (Gogh)"

-- others
-- config.color_scheme = "Abernathy"
-- config.color_scheme = "Blazer"
-- config.color_scheme = "Builtin Solarized Dark"
-- config.color_scheme = "Bleh-1 (terminal.sexy)"
-- config.color_scheme = "Chalk"
-- config.color_scheme = "Cloud (terminal.sexy)"
-- config.color_scheme = "Codeschool (dark) (terminal.sexy)"
-- config.color_scheme = "Dark+"
-- config.color_scheme = "darkmatrix"
-- config.color_scheme = "Dawn (terminal.sexy)"
-- config.color_scheme = "Deafened (terminal.sexy)"
-- config.color_scheme = "Default (dark) (terminal.sexy)"
-- config.color_scheme = "DjangoRebornAgain"
-- config.color_scheme = "duckbones"
-- config.color_scheme = "Ef-Deuteranopia-Dark"
-- config.color_scheme = "Ef-Maris-Dark"
-- config.color_scheme = "Epiphany (terminal.sexy)"
-- config.color_scheme = "FarSide (terminal.sexy)"
-- config.color_scheme = "Fishbone (terminal.sexy)"
-- config.color_scheme = "ForestBlue"
-- config.color_scheme = "Galizur"
-- config.color_scheme = "Greenscreen (dark) (terminal.sexy)"
-- config.color_scheme = "Hardcore"
-- config.color_scheme = "hund (terminal.sexy)"
-- config.color_scheme = "Hybrid"
-- config.color_scheme = "Vacuous 2 (terminal.sexy)"
-- config.color_scheme = "X::DotShare (terminal.sexy)"

--/--------

config.window_background_opacity = 0.92
-- config.window_background_opacity = 0.79

config.font = wezterm.font("FantasqueSansM Nerd Font Mono")
config.font_size = 14

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
