require "benchmark"
require "./tree.rb"
require "./node.rb"

values = []
1000.times { values << rand(10000) }

binary_tree = Tree.new
values.each do |value|
    binary_tree.add_node(Node.new(value))
end


# puts "Values array:"
# puts values.inspect
# binary_three.print_sorted

puts "#{values.count} values to proceed"
puts "Three max values is: #{binary_tree.get_max}"
puts "Three min val is: #{binary_tree.get_min}"


puts "Searching for #{values.last} takes:"
puts Benchmark.measure { binary_tree.find(values.last) }
# puts "Search result is: #{result}"