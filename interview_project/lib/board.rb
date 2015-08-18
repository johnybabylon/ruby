class Board

	#initialize board size and required pieces to win

	def initialize(board_size, pieces_to_win)

		@board_size = board_size.to_i

		#set array by board size * board size
		@board = Array.new(@board_size) {
			Array.new(@board_size) {'0'}
		}

		@pieces_to_win = pieces_to_win.to_i
	
	end



	def display
		
		#map out and print board for display
		puts "\n"
  		puts @board.map { |row| row.map { |e| e }.join("|") }.join("\n")
		puts "\n"	

	end




	def player_move(current_player)
	

		#get current player from Player.turn	
		@current_player = current_player
		

		puts "Enter the row and column you wish to occupy"
		puts "(i.e. For row 3, column 3 enter: 3 3)"

		# get row and column from player
		row, col = gets.split.map { |e| e.to_i - 1 }
		
		while self.is_move_legal(row, col) == false
			
			
			row, col = gets.split.map { |e| e.to_i - 1 }


		end

		@board[row][col] = current_player
	end

	


	def is_move_legal(row, col)

		# checks to see if space is empty, if not equal to zero, than not empty	
		if @board[row][col] != '0'
			puts "That spot is taken"
			return false
		end 

		# checks to see if space has fully bottomed out, board size is max number of rows
		# thus if the @board[row] is not equal to the board size, it's not on the bottom
		# and must be tested that there is a player value under it
		

		# we got the row, col above and changed it to int and subtracted one for the account
		# for the array offset.  Now we have to change it back for test purposes
		string_row = row + 1
		if  string_row.to_s != @board_size.to_s && @board[string_row][col] == '0'
			puts "You're not on the bottom row, try again:"
			return false
		end
		
	
	
	end

	
	def winner_row

		# SCAN EACH ROW FOR WINNER

		@player1 = '1' * @pieces_to_win # if it takes 5 pieces then you look for a string
     	  	@player2 = '2' * @pieces_to_win # of five 1's or five 2's to find a winner
	


		for row in 0..@board_size-1

			if @board[row].join.include? @player1
				puts "You win Player 1!!!"
				exit
			end

			if @board[row].join.include? @player2
				puts "You win Player 2!!!"
				exit
			end

		end

	
	end


	def winner_column

		#SCAN EACH COLUMN FOR WINNER

		@player1 = '1' * @pieces_to_win
		@player2 = '2' * @pieces_to_win
		

		
		for col in 0..@board_size-1
		
			@column = ''
			
			for row in 0..@board_size-1
			
				@column << @board[row][col]

			end 

			
					
			if @column.include? @player1
				puts "You win Player 1!!!"
				exit
			end

			if @column.include? @player2
				puts "You win Player 2!!!"
				exit
			end


		end


	end


	def winner_diagonal
	
	#SCAN EACH DIAGNAL FROM LEFT TO RIGHT

		@diagonal = (0..@board_size-1).collect { |i| @board[i][i] }
		
		if @diagonal.include? @player1
			puts "You win Player 1!!!"
			exit
		end

		if @diagonal.include? @player2
			puts "You win Player 2!!!"
			exit
		end
	end

	
	def winner_diagonal_all

		@boundary = @board_size - @pieces_to_win
		@index = 0
		@array = []
		
		while  @index <= @pieces_to_win
		@array << @board_size[@boundary][@index]
		@index +=1
		@boundary -=1
		end

		

	end
		
		

end





