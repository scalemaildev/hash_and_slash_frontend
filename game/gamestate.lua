gamestate = {}

local vis_tiles = {}

-- SETTERS
function gamestate.set_tile(pos, tile_type)
	vis_tiles[pos] = tile_type
end

-- GETTERS
function gamestate.get_vismap()
	return vis_tiles
end

return gamestate