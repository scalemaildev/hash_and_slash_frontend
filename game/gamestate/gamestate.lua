Gamestate = {
	room_id = "", -- colyseus room, not hcs topic
	round = 0,
	game_result = "IN_PROGRESS",
	player_stats = {
		hp = 0,
		max_hp = 0
	},
	vis = {},
	bounds = {
		x = 0,
		y = 0,
		w = 0,
		h = 0
	}
}

-- General
function Gamestate.reset()
	Gamestate.room_id = ""
	Gamestate.round = 0
	Gamestate.game_result = "IN_PROGRESS"
	Gamestate.player_stats.hp = 0
	Gamestate.play_stats.max_hp = 0

	for k,_ in pairs(Gamestate.vis) do
		Gamestate.clear_vis_pos(k)
	end

	Gamestate.bounds.x = 0
	Gamestate.bounds.y = 0
	Gamestate.bounds.w = 0
	Gamestate.bounds.h = 0
end

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

-- Bounds
function Gamestate.set_bound_x(x)
	Gamestate.bounds.x = x
end

function Gamestate.set_bound_y(y)
	Gamestate.bounds.y = y
end

function Gamestate.set_bound_w(w)
	Gamestate.bounds.w = w
end

function Gamestate.set_bound_h(h)
	Gamestate.bounds.h = h
end

function Gamestate.get_bounds()
	return Gamestate.bounds.x, Gamestate.bounds.y, Gamestate.bounds.w, Gamestate.bounds.h
end

return Gamestate