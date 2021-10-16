---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "/home/natem/.config/awesome/" 

local icon_path = "/home/natem/.config/awesome/icons/"

local theme = {}

theme.font          = "Roboto Medium 9"
theme.titlefont     = "Roboto Bold 9"
theme.fontname      = "Roboto Medium 9"

theme.bg_normal     = "#1C1E26"
theme.bg_focus      = theme.bg_normal 
theme.bg_urgent     = theme.bg_normal 
theme.bg_minimize   = "#aaaaaa"
theme.bg_systray    = theme.bg_normal
theme.bg_light      = "#232530"
theme.bg_very_light = "#2E303E"
theme.bg_dark       = "#1A1C23"

theme.fg_normal     = "#dddddd"
theme.fg_dark       = "#cccccc"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.highlight = "#F43E5C"
theme.highlight_alt = "#B877DB"

theme.misc1 = "#6C6F93"
theme.misc2 = "#2f3240"
theme.transparent = "'#282A3600"

-- terminal colours
theme.blue = "#26BBD9"
theme.blue_light = "#3FC6DE"
theme.cyan = "#59E3E3"
theme.cyan_light = "#6BE6E6"
theme.green = "#29D398"
theme.green_light = "#3FDAA4"
theme.purple = "#EE64AE"
theme.purple_light = "#F075B7"
theme.red = "#E95678"
theme.red_light = "#EC6A88"
theme.yellow = "#FAB795"
theme.yellow_light = "#FBC3A7"

-- Gaps
theme.useless_gap   = dpi(12)
theme.screen_margin = dpi(3)

-- Borders
theme.border_width  = dpi(0)
theme.border_normal = theme.bg_very_light 
theme.border_focus  = theme.bg_very_light 
theme.border_marked = theme.bg_very_light 
-- Rounded corners
theme.rounded_corners = true
theme.border_radius = dpi(6)

-- bar config
theme.bar_position = "top"
theme.bar_height = dpi(28)
theme.bar_item_radius = dpi(10)
theme.bar_item_padding = dpi(3)

-- regular
theme.titlebar_close_button_normal = icon_path.."titlebar/close/close_1.png"
theme.titlebar_close_button_focus = icon_path.."titlebar/close/close_2.png"
theme.titlebar_maximized_button_normal_inactive = icon_path.."titlebar/maximize/maximize_1.png"
theme.titlebar_maximized_button_focus_inactive  = icon_path.."titlebar/maximize/maximize_2.png"
theme.titlebar_maximized_button_normal_active = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_active  = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_minimize_button_normal = icon_path.."titlebar/minimize/minimize_1.png"
theme.titlebar_minimize_button_focus  = icon_path.."titlebar/minimize/minimize_2.png"

-- hover
theme.titlebar_close_button_normal_hover = icon_path.."titlebar/close/close_3.png"
theme.titlebar_close_button_focus_hover = icon_path.."titlebar/close/close_3.png"
theme.titlebar_maximized_button_normal_inactive_hover = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_inactive_hover  = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_normal_active_hover = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_maximized_button_focus_active_hover  = icon_path.."titlebar/maximize/maximize_3.png"
theme.titlebar_minimize_button_normal_hover = icon_path.."titlebar/minimize/minimize_3.png"
theme.titlebar_minimize_button_focus_hover  = icon_path.."titlebar/minimize/minimize_3.png"

theme.titlebar_height = dpi(28)

-- Icons
theme.avatar = icon_path.."avatar.png"
theme.battery_alert_icon = icon_path.."battery_alert.png"
theme.notification_icon = icon_path.."notification.png"
theme.search_icon = icon_path.."search.png"
theme.search_grey_icon = icon_path.."search_grey.png"
theme.next_icon = icon_path.."next.png"
theme.next_grey_icon = icon_path.."next_grey.png"
theme.previous_icon = icon_path.."previous.png"
theme.previous_grey_icon = icon_path.."previous_grey.png"
theme.camera_icon = icon_path.."camera.png"
theme.nocover_icon = icon_path.."nocover.png"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.layout_fairh = icon_path.."layouts/fairhw.png"
theme.layout_fairv = icon_path.."layouts/fairvw.png"
theme.layout_floating  = icon_path.."layouts/floatingw.png"
theme.layout_magnifier = icon_path.."layouts/magnifierw.png"
theme.layout_max = icon_path.."layouts/maxw.png"
theme.layout_fullscreen = icon_path.."layouts/fullscreenw.png"
theme.layout_tilebottom = icon_path.."layouts/tilebottomw.png"
theme.layout_tileleft   = icon_path.."layouts/tileleftw.png"
theme.layout_tile = icon_path.."layouts/tilew.png"
theme.layout_tiletop = icon_path.."layouts/tiletopw.png"
theme.layout_spiral  = icon_path.."layouts/spiralw.png"
theme.layout_dwindle = icon_path.."layouts/dwindlew.png"
theme.layout_cornernw = icon_path.."layouts/cornernww.png"
theme.layout_cornerne = icon_path.."layouts/cornernew.png"
theme.layout_cornersw = icon_path.."layouts/cornersww.png"
theme.layout_cornerse = icon_path.."layouts/cornersew.png"


theme.wallpaper = "/home/natem/Wallpapers/github/ign_waifu.png"
theme.wallpaper_blur = "/home/natem/Wallpapers/github/ign_waifu_blur.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
-- theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
