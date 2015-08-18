require_relative 'spec_helper'

describe Board do

	describe "#new" do
		context "initialized" do
		  it "is an instance of Board" do
		    @b = Board.new(3,2)
		    @b.should be_an_instance_of Board
		  end
		end
	end

	describe "is move legal" do
		it "raises an exception when move is illegal" do
		@b[1][1] = '1'
		expect(@b.is_move_legal(1,1)).to eq false
		end
	end
		
end
