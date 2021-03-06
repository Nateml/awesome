-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
local beautiful = require("beautiful")

require("config.errorhandling")

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init("/home/natem/.config/awesome/theme.lua")

-- window decorations (titlebars)
require("decorations")

-- init configs
require("config.wallpaper")
require("config.layout")
require("config.rules")
require("config.tags")
require("config.keys")

-- init daemons
require("evil")

-- init widgets
-- require("widgets.dashboard")
require("widgets.topbar")
require("widgets.popup")
require("widgets.notifications")
require("awful.autofocus")

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- if not awesome.startup then awful.client.setslave(c) end

    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

-- Autorun programs
awful.spawn.with_shell("~/.config/awesome/config/autorun.sh")
awful.spawn.spawn("~/.screenlayout/my_layout.sh") 

-- require("widgets.tasklist")
