Gamestate = {
	room_id = "", -- colyseus room, not hcs topic
	vis_coords = {}
}

-- Room ID
function Gamestate.set_room_id(room_id)
	Gamestate.room_id = room_id
end

function Gamestate.get_room_id()
	return Gamestate.room_id
end

-- Visible Coordinates
function Gamestate.set_vis_coord(coord, key)
	Gamestate.vis_coords[key] = coord
end

function Gamestate.clear_vis_coord(coord, key)
	Gamestate.vis_coords[key] = nil
end

function Gamestate.get_vis_coords()
	return Gamestate.vis_coords
end

return Gamestate