local saved_speed = 1.5

mp.add_key_binding("p", "toggle-speed", function()
    local current_speed = mp.get_property_number("speed")
	local nxt_speed = nil
    if current_speed == 1.0 then
		nxt_speed = saved_speed
    else
		nxt_speed = 1.0
        saved_speed = current_speed
    end
	mp.set_property_number("speed", nxt_speed)
	mp.osd_message(string.format("Speed: %.2f", nxt_speed));
end)
