#!/usr/bin/env fish


if type xrandr > /dev/null
    for m in (xrandr --query | grep " connected" | cut -d" " -f1)
        set -x MONITOR $m
        polybar --reload toph &
    end
else
    polybar --reload toph &
end

