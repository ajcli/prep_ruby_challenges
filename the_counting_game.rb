#Counting_Game

def counting_game
	current_count = 1
	direction_forward  = true
	current_player_count = 1
	while current_count <= 100
		puts "Player #{current_player_count} says #{current_count}"
		if current_count % 7 == 0
			direction_forward = !direction_forward
		end
		if direction_forward
			current_player_count += 1
			if current_count % 11 == 0
				current_player_count += 1
			end
			if current_player_count > 10
				current_player_count -= 10
			end
		end
		if !direction_forward
			current_player_count -= 1
			if current_count % 11 == 0
				current_player_count -= 1
			end
			if current_player_count < 1
				current_player_count += 10
			end
		end
		current_count += 1
	end
end
counting_game