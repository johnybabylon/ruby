require_relative 'board'
require_relative 'player'

#Main Program

puts "\n!!!Welcome to Ruby Connect Four!!!\n\n"

puts "Enter board size (i.e. If you want a 3x3 board enter 3):"

#get board size
board_size = gets

puts "Enter the number of adjacent pieces required to win:"

#get pieces to win
pieces_to_win = gets

#validation for pieces to win !> board size
while pieces_to_win > board_size
	puts "You require too many pieces, please try again:"
	pieces_to_win = gets
end

@board = Board.new(board_size, pieces_to_win)

puts "\nHere's your board"
@board.display


@player = Player.new


#Main Program Loop
loop do
	#uses player.turn to first display and set current_player, then calls board.player_move
	#to get and assign the moves
	@board.player_move(@player.turn)

	@board.display

	@board.winner_row

	@board.winner_column

	@board.winner_diagonal

        

end






