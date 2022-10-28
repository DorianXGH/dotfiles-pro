#!/usr/bin/lua
local options = {
    [" Lock"] = "swaylock -i /home/dorian/Backgrounds/owl_redder_nighter.png --indicator-radius 5 --ring-color 1c050d --key-hl-color 8e242e",
    [" Shut down"] = "systemctl poweroff",
    [" Reboot"] = "systemctl reboot",
    [" Log out"] = "swaymsg exit",
    [" Suspend"] = "systemctl suspend",
}

local options_string = ""
local length = 0
for key, _ in pairs(options) do
    options_string = options_string .. key .. "\n"
    length = length + 1
end
options_string = options_string:sub(1, -2)

local f = assert(
    io.popen(
        "echo -e '"
            .. options_string
            .. "' | wofi --dmenu --insensitive --prompt 'Power menu' --width 300 --lines "
        ------------------ to change the location of the dropdown, use --location 1 (top left) or --location 3 (top right) (see --location in wofi --help)
            .. length+1,
        "r"
    )
)
local s = assert(f:read("*a"))
s = string.gsub(s, "^%s+", "")
s = string.gsub(s, "%s+$", "")
s = string.gsub(s, "[\n]+", " ")
f:close()

os.execute(options[s])