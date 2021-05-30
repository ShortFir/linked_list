# frozen_string_literal: true

# Nodes for linked_list.rb
class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  # def value
  #   @value
  # end

  # def next_node
  #   @next_node
  # end
end
