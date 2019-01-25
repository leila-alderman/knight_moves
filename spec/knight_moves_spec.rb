require "knight_moves"

describe "MoveNode" do
	it "initializes a node" do
		node = MoveNode.new(3)
        expect(node.value).to eql(3)
        expect(node.parent).to eql(nil)
        expect(node.children).to eql([])
        expect(node.children[0]).to eql(nil)
	end
end

describe "Board" do
	it "initializes a board" do
		board = Board.new
        expect(board.spaces[0][0]).to eql(["A", 1])
	end
end

describe "Knight" do
    before do
        @knight = Knight.new
    end

    describe "#initialize" do
        it "initializes with nil" do
            expect(@knight.root).to eql(nil)
        end
    end

    describe "#knight_moves" do
        it "works for the root" do
            expect(@knight.knight_moves(["B", 2], ["B", 2])).to eql("You made it in 0 moves! Here's your path:
[B, 2]")
        end

        it "works for one step" do
            expect(@knight.knight_moves(["A", 1], ["B", 3])).to eql("You made it in 1 move! Here's your path:
[A, 1]
[B, 3]")
        end

        it "works for two steps" do
            expect(@knight.knight_moves(["A", 1], ["D", 4])).to eql("You made it in 2 moves! Here's your path:
[A, 1]
[C, 2]
[D, 4]")
        end

        it "works for three steps" do
            expect(@knight.knight_moves(["C", 3], ["D", 3])).to eql("You made it in 3 moves! Here's your path:
[C, 3]
[A, 2]
[C, 1]
[D, 3]")
        end
    end

end