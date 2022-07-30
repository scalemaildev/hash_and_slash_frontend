Gamestate = {
	room_id = "",
	tiles = {},
	actors = {}
}

-- SETTERS
function Gamestate.set_room_id(room_id)
	Gamestate.room_id = room_id
end
	
function Gamestate.set_tile(pos, tile_type)
	Gamestate.tiles[pos] = tile_type
end

function Gamestate.set_actor(id, pos, actor_type)
	Gamestate.actors[id] = {
		pos = pos,
		actor_type = actor_type
	}
end

-- GETTERS
function Gamestate.get_room_id()
	return Gamestate.room_id
end

function Gamestate.get_tiles()
	return Gamestate.tiles
end

function Gamestate.get_actors()
	return Gamestate.actors
end

return Gamestate