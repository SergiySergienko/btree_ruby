#
# Binary three node object
#
class Node
    attr_accessor :left, :right, :value

    def initialize(value)
        self.left = nil
        self.right = nil
        self.value = value
    end

    def add_node(node)
        if node.value < self.value
            if self.left.nil?
                self.left = node
            else
                self.left.add_node(node)
            end
        elsif node.value > self.value
            if self.right.nil?
                self.right = node
            else
                self.right.add_node(node)
            end
        end
    end

    def visit
        self.left.visit() unless self.left.nil?
        puts self.value
        self.right.visit() unless self.right.nil?
    end

    def find(value)
        if self.value == value
            return self.value
        elsif value < self.value
            self.left.find(value) unless self.left.nil?
        elsif value > self.value
            self.right.find(value) unless self.right.nil?
        end
    end

    def get_max
        return self.value if self.right.nil?
        self.right.get_max
    end
    
    def get_min
        return self.value if self.left.nil?
        self.left.get_min
    end

end
