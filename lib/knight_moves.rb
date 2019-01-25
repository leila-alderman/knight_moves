class Board
    attr_accessor :spaces

    def initialize
        @spaces = []
        for i in "A".ord.."H".ord
            @row = []
            for j in 1..8
                @row.push([i.chr, j])
            end
            @spaces.push(@row)
        end
    end
end

class Knight
    def initialize
        @position = [0,0]
    end

    def knight_moves(start, stop)
    end
end