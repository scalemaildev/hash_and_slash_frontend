Gamestate = {
	tiles = {}
}

-- SETTERS
function Gamestate.set_tile(pos, tile_type)
	Gamestate.tiles[pos] = tile_type
end

-- GETTERS
function Gamestate.get_tiles()
	return Gamestate.tiles
end

return Gamestate