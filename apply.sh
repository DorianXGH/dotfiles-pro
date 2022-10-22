#!/bin/zsh
files=(alacritty/alacritty.yml sway/config waybar/config waybar/power.lua waybar/style.css wofi/style.css)

foreach file in $files
	jinja2 templates/$file global_config.yml -o $file
end