Hi Bret, 

This is Elliott Chavis and I am presenting you with my F50 Techinial Candidadte Interview Project - Connect Four written in Ruby. I just wanted to make some quick comments and tips about my project.  To load the program, just download the attached folder and cd into the lib folder.  Then run 'ruby ruby_connect_four.rb' file. To run the tests just cd into the interview_project folder (main folder) and run 'bundle exec rspec' from the terminal.  The classes and tests are in the lib and spec folders respectively.  

I really got into this project and thoroughly enjoyed myself.  The time spent approximated 3 hours. For the basic set up of the Connect Four game I decided to stick with two classes: Board and Player.  The player class kept track of whose turn it was while the board class regulated everything else.  The board class had the majority of the methods in my program. Aside from the eponymous and obvioius display method as well as a is_move_legal and player_move methods, the rest of the bunch were methods for determining the winner. 

The winner_row method is O(n) Linear Time as it is scanning linearly for an element

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

Also, the other two winner methods were linear

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

Overall I thought this was a great project, really efficent for basic Ruby programming.  I look forward to hearing from F50 and please let me know if I can be of assistance if needed,

Regards,


Elliott Chavis
