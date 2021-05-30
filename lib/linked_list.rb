# frozen_string_literal: true

require_relative 'node'

# List made of nodes.rb
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      iterate_list.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = (@head.nil? ? Node.new(value) : Node.new(value, @head))
  end

  def size
    return 0 if @head.nil?

    count = 1
    iterate_list { count += 1 }
    count
  end

  def head
    @head.value
  end

  def tail
    iterate_list.value
  end

  def at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

  # TODO: Rework to use iterate_list?
  def to_s
    return 'nil' if @head.nil?

    current_node = @head
    string = ''
    until current_node.nil?
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    "#{string}nil\n"
  end

  # TODO: Extra credit
  def insert_at(value, index); end

  def remove_at(index); end

  private

  # TODO: rework into a yield, proc thingy? Done with 'iterate_list'
  def find_tail
    return @head if @head.nil?

    tail_node = @head
    tail_node = tail_node.next_node until tail_node.next_node.nil?
    tail_node
  end

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
