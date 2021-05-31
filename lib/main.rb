# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new

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
