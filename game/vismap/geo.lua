Geo = {}

function Geo.int_to_coord(int_pos)
	local x = int_pos % 10000
	local y = (int_pos - x) / 10000

	return { x = x, y = y }
end

function Geo.coord_to_v3(coord, z_offset)
	local x = coord.x * 32
	local y = coord.y * 46
	local z = (coord.y / 10000) - z_offset

	return vmath.vector3(x, y, z)
end

function Geo.int_to_camera(int_pos)
	local coord = Geo.int_to_coord(int_pos)

	return vmath.vector3(coord.x * 32, coord.y * 46, 1)
end

return Geo