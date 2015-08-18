class Player

#set up number of players and their values
Player_One = '1'
Player_Two = '2'



	def initialize
		
		#initialize Player with cycle method
		@Player = [Player_One, Player_Two].cycle
		
	end

	
	def turn
		#Display current Player's turn
		current_player = @Player.next
		puts "It's your turn Player " + current_player
	
		# return current_player to be used by Board.player_move
		return current_player

	end




end

