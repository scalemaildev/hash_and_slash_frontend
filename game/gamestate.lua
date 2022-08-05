Gamestate = {
	room_id = "",
	tiles = {},
	vis_coords = {},
	entities = {},
	actors = {}
}

-- SETTERS
function Gamestate.set_room_id(room_id)
	Gamestate.room_id = room_id
end

-- Tiles
function Gamestate.clear_tiles()
	for key, _ in ipairs(Gamestate.tiles) do
		Gamestate.tiles[key] = nil
	end
end

function Gamestate.set_tile(pos, tile_type, blocks_move, blocks_sight)
	Gamestate.tiles[pos] = {
		tile_type = tile_type,
		blocks_move = blocks_move,
		blocks_sight = blocks_sight
	}
end

-- Vis Coords
function Gamestate.clear_vis_coords()
	for key, _ in pairs(Gamestate.vis_coords) do
		Gamestate.vis_coords[key] = nil
	end
end

function Gamestate.update_vis_coords(new_coords)
	Gamestate.clear_vis_coords()
	Gamestate.vis_coords = new_coords
end

-- GETTERS
function Gamestate.get_room_id()
	return Gamestate.room_id
end

function Gamestate.get_tiles()
	return Gamestate.tiles
end

function Gamestate.get_vis_coords()
	return Gamestate.vis_coords
end

function Gamestate.get_entities()
	return Gamestate.entities
end

function Gamestate.get_actors()
	return Gamestate.actors
end

return Gamestate