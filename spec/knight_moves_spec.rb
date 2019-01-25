require "knight_moves"

describe "Board" do
	it "initializes a board" do
		board = Board.new
        expect(board.spaces[0][0]).to eql(["A", 1])
	end
end