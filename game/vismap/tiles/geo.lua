Geo = {}

function Geo.int_to_coord(int_pos)
	local x = int_pos % 10000
	local y = (int_pos - x) / 10000

	return { x = x, y = y }
end

return Geo