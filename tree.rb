#
# Binary three main object
# This particular example working with integers three only
#
class Tree
    #
    # Constructor
    #
    def initialize
        @root = nil
    end

    #
    # Add node method 
    # For example: 
    #   three.add_node(Node.new(5))
    #
    def add_node(node)
        if @root
            @root.add_node(node)
        else
            @root = node
        end
    end

    def print_sorted
        @root.visit()
    end

    def find(value)
        @root.find(value)
    end

    def get_max
        @root.get_max
    end

    def get_min
        @root.get_min
    end

end
