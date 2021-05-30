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
      tail = find_tail
      tail.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = (@head.nil? ? Node.new(value) : Node.new(value, @head))
  end

  def size
    return 0 if @head.nil?

    count = 1
    count_node = @head
    until count_node.next_node.nil?
      count_node = count_node.next_node
      count += 1
    end
    count
  end

  def head
    @head.value
  end

  def tail
    find_tail.value
  end

  def at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

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

  def find_tail
    return @head if @head.nil?

    tail_node = @head
    tail_node = tail_node.next_node until tail_node.next_node.nil?
    tail_node
  end
end
