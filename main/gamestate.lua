M = {}

local vis_tiles = {}

-- SETTERS
function M.set_tile(pos, tile_type)
	vis_tiles[pos] = tile_type
end

-- GETTERS
function M.get_vismap()
	return vis_tiles
end

return M