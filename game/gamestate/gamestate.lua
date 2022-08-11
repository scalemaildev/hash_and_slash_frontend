Gamestate = {
	room_id = "", -- colyseus room, not hcs topic
	round = 0,
	game_result = 'IN_PROGRESS',
	player_stats = {
		hp = 0,
		max_hp = 0
	},
	vis = {}
}

-- Room ID
function Gamestate.set_room_id(room_id)
	Gamestate.room_id = room_id
end

function Gamestate.get_room_id()
	return Gamestate.room_id
end

-- Recalculate FoV
function Gamestate.set_recalculate()
	Gamestate.recalculate = true
end

function Gamestate.get_recalculate()
	return Gamestate.recalculate
end

-- Round
function Gamestate.set_round(count)
	Gamestate.round = count
end

function Gamestate.get_round()
	return Gamestate.round
end

-- Game Status
function Gamestate.set_game_result(new_status)
	Gamestate.game_result = new_status
end

function Gamestate.get_game_result()
	return Gamestate.game_result
end

-- Stats
function Gamestate.update_player_stats(hp, max_hp)
	Gamestate.player_stats.hp = hp
	Gamestate.player_stats.max_hp = max_hp
end

-- Visible Positions
function Gamestate.see_vis_pos(key)
	Gamestate.vis[key] = true
end

function Gamestate.unsee_vis_pos(key)
	Gamestate.vis[key] = false
end

function Gamestate.clear_vis_pos(key)
	Gamestate.vis[key] = nil
end

function Gamestate.get_vis_pos(pos)
	return Gamestate.vis[pos]
end

return Gamestate