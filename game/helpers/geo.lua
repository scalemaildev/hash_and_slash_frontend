Geo = {}

function Geo.int_to_coord(int_pos)
	local x = int_pos % 10000
	local y = (int_pos - x) / 10000

	return { x = x, y = y }
end

function Geo.coord_to_v3(coord, z_offset)
	local x = coord.x * 22
	local y = coord.y * 33
	local z = (coord.y / 10000) - z_offset

	return vmath.vector3(x, y, z)
end

return Geo