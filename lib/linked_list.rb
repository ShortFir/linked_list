# frozen_string_literal: true

require_relative 'node'

# List made of nodes.rb
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    return @head = Node.new(value) if @head.nil?

    iterate_list.next_node = Node.new(value)
  end

  def prepend(value)
    return @head = Node.new(value) if @head.nil?

    @head = Node.new(value, @head)
  end

  def size
    return 'nil' if @head.nil?

    count = 1
    iterate_list { count += 1 }
    count
  end

  def head
    return 'nil' if @head.nil?

    @head.value
  end

  def tail
    return 'nil' if @head.nil?

    iterate_list.value
  end

  def at(index)
    return 'nil' if @head.nil?
    return 'negative index' if index.negative?

    node = @head
    count = 0
    until index == count
      count += 1
      node = node.next_node
      return 'nil' if node.nil?
    end
    node.value
  end

  def pop
    return 'nil' if @head.nil?

    node = @head
    until node.next_node.next_node.nil?
      node = node.next_node
      next_node = node.next_node
    end
    node.next_node = nil
    next_node.value
  end

  def contains?(value)
    return 'nil' if @head.nil?

    node = @head
    until node.value == value
      node = node.next_node
      return false if node.nil?
    end
    true
  end

  def find(value)
    return 'nil' if @head.nil?
  end

  # TODO: Rework to use iterate_list?
  def to_s
    return 'nil' if @head.nil?

    node = @head
    string = ''
    until node.nil?
      string += "( #{node.value} ) -> "
      node = node.next_node
    end
    "#{string}nil\n"
  end

  # Experimenting... iterate stop on next node nil. to_s needs current node nil
  # Also, how to pass reference to iterate node.value???
  # def to_s_new
  #   return 'nil' if @head.nil?

  #   string = ''
  #   iterate_list do
  #     string += "( #{node.value} ) -> "
  #   end
  #   "#{string}nil\n"
  # end

  # TODO: Extra credit
  def insert_at(value, index); end

  def remove_at(index); end

  private

  # TODO: rework into a yield or proc? Done with 'iterate_list'
  # def find_tail
  #   return @head if @head.nil?

  #   tail_node = @head
  #   tail_node = tail_node.next_node until tail_node.next_node.nil?
  #   tail_node
  # end

  # ...Seems unnecessary, but I'll keep atm
  # Return the last node in the list
  # Can take additional code in block
  def iterate_list
    return @head if @head.nil?

    node = @head
    until node.next_node.nil?
      yield if block_given?
      node = node.next_node
    end
    node
  end
end
