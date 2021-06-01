# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new

# Test with no elements in list, return nil basically
puts list.size
puts list.head
puts list.tail
puts list.at(100)
puts list.pop
puts list.to_s
puts
# Test with no elements in list, return nil basically

puts list
print 'Size: ', list.size, "\n"
list.prepend('age')
puts list
print 'Size: ', list.size, "\n"
list.append('name')
puts list
print 'Size: ', list.size, "\n"
list.prepend('wisdom')
puts list
print 'Size: ', list.size, "\n"
list.prepend(666)
puts list
print 'Size: ', list.size, "\n"
list.append(401)
puts list
print 'Size: ', list.size, "\n"
list.append(4010)
puts list
print 'Size: ', list.size, "\n"
list.prepend('pizza')
puts list
print 'Size: ', list.size, "\n\n"

print 'Head: ', list.head, "\n"
print 'Tail: ', list.tail, "\n\n"

print 'Index -5: ', list.at(-5), "\n"
print 'Index 0: ', list.at(0), "\n"
print 'Index 2: ', list.at(2), "\n"
print 'Index 10: ', list.at(10), "\n\n"

puts list
print 'Pop: ', list.pop, "\n"
puts list
puts

print 'contains?(pizza): ', list.contains?('pizza'), "\n"
print 'contains?(401): ', list.contains?(401), "\n"
print 'contains?(alien): ', list.contains?('alien'), "\n"
print 'contains?(4010): ', list.contains?(4010), "\n\n"

print 'find(401) - index: ', list.find(401), "\n"
print 'find(wisdom) - index: ', list.find('wisdom'), "\n"
print 'find(apples) - index: ', list.find('apples'), "\n\n"

print 'insert_at(house, 3): ', list.insert_at('house', 3), "\n"
puts list
print 'insert_at(555, 1): ', list.insert_at(555, 1), "\n"
puts list
print 'insert_at(top, 0): ', list.insert_at('top', 0), "\n"
puts list
print 'insert_at(bottom, 10): ', list.insert_at('bottom', 10), "\n"
puts list
puts

print 'remove_at(3): ', list.remove_at(3), "\n"
puts list
print 'remove_at(0): ', list.remove_at(0), "\n"
puts list
print 'remove_at(100): ', list.remove_at(100), "\n"
puts list
