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

class MoveNode
    attr_accessor :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
end

class Knight  
    attr_accessor :root

    def initialize
        @root = nil
    end

    def knight_moves(start, stop)       # e.g., knight_moves(["A", 1], ["B", 3])     
        current_node = find_stop(start, stop)
        move_list = []
        until current_node.nil?
            move_list.unshift(current_node.value)
            current_node = current_node.parent
        end

        show_results(move_list)
    end

    private
    def find_stop(start, stop)
        @root = MoveNode.new(start)
        queue = [@root]
        visited = []
        found = false
        until found == true
            current_node = queue.shift
            if current_node.value == stop
                found = true
                return current_node
            else
                valid_moves = add_moves(current_node.value, visited)
                valid_moves.each do |move|
                    new_node = MoveNode.new(move)
                    new_node.parent = current_node
                    current_node.children.push(new_node)
                    queue.push(new_node)
                    visited.push(new_node.value)
                end
            end
        end
    end
    
    def add_moves(start,visited)
        possible_moves = [
            [(start[0].ord - 2).chr, start[1] - 1],
            [(start[0].ord - 2).chr, start[1] + 1],
            [(start[0].ord + 2).chr, start[1] - 1],
            [(start[0].ord + 2).chr, start[1] + 1],
            [(start[0].ord - 1).chr, start[1] - 2],
            [(start[0].ord + 1).chr, start[1] - 2],
            [(start[0].ord - 1).chr, start[1] + 2],
            [(start[0].ord + 1).chr, start[1] + 2]
        ]
        valid_moves = []
        possible_moves.each do |move|
            valid_moves.push(move) if valid?(move) && !visited.include?(move)
        end
        return valid_moves
    end

    def valid?(move)
        if move[0].between?("A", "H") && move[1].between?(1, 8)
            true
        else
            false
        end
    end 

    def show_results(move_list)
        count = move_list.length - 1
        string = "You made it in #{count} #{pluralize(count, 'move')}! Here's your path:"
        move_list.each do |move|
            string += "\n[#{move[0]}, #{move[1]}]"
        end
        return string
    end

    def pluralize(number, text)
        return "#{text}s" if number != 1
        text
    end



    

end