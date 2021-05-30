# frozen_string_literal: true

require_relative 'node'

# List made of nodes.rb
class LinkedList
  # attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = @head
    @size = 0
  end

  def append(value)
    # if @head.value.nil? && @head.next_node.nil?
    if @head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @tail = Node.new(value)
      @head.next_node = @tail
    end
    @size += 1
  end

  def prepend(value)
    @head = (@head.nil? ? Node.new(value) : Node.new(value, @head))
    @size += 1
  end

  # TODO: count amount of nodes, rather than track variable
  def size
    @size
  end

  def head
    @head
  end

  # TODO: return the tail by going through list
  def tail
    @tail
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
end
