# frozen_string_literal: true

require_relative 'node'

# List made of nodes.rb
class LinkedList
  def append(_value)
    Node.new
  end

  def prepend(_value)
    Node.new
  end

  def size; end

  def head; end

  def tail; end

  def at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

  def to_s; end

  def insert_at(value, index); end

  def remove_at(index); end
end
