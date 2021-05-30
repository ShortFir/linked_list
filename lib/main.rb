# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new

# rubocop:disable Metrics/AbcSize
def show_list(list)
  puts '--------------------'
  puts "list                == #{list}"
  puts '--------------------'

  puts "list.head           == #{list.head}"
  puts "list.head.value     == #{list.head.value}"
  puts "list.head.next_node == #{list.head.next_node}"

  puts "list.tail           == #{list.tail}"
  puts "list.tail.value     == #{list.tail.value}"
  puts "list.tail.next_node == #{list.tail.next_node}"
  puts '--------------------'
end
# rubocop:enable Metrics/AbcSize

puts list
puts list.size
list.append('name')
puts list
puts list.size
list.prepend('age')
puts list
puts list.size
list.prepend('wisdom')
puts list
puts list.size
list.prepend(666)
puts list
puts list.size
