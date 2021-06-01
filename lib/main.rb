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
print 'Size: ', list.size, "\n"

print 'Head: ', list.head, "\n"
print 'Tail: ', list.tail, "\n"

print 'Index -5: ', list.at(-5), "\n"
print 'Index 0: ', list.at(0), "\n"
print 'Index 2: ', list.at(2), "\n"
print 'Index 10: ', list.at(10), "\n"

puts list
print 'Pop: ', list.pop, "\n"
puts list

print 'contains?(pizza): ', list.contains?('pizza'), "\n"
print 'contains?(401): ', list.contains?(401), "\n"
print 'contains?(alien): ', list.contains?('alien'), "\n"
print 'contains?(4010): ', list.contains?(4010), "\n"

print 'find(401) - index: ', list.find(401), "\n"
print 'find(wisdom) - index: ', list.find('wisdom'), "\n"
print 'find(apples) - index: ', list.find('apples'), "\n"
