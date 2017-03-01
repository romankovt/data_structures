require 'pry'

class Node
  attr_accessor :value, :next, :prev

  def initialize(value)
    @value = value
  end
end

class DoublyLinkedList
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def push(item)
    new_node = Node.new(item)

    # set prev if there are some nodes already
    if @nodes[-1]
      @nodes[-1].next = new_node
      new_node.prev = @nodes[-1]
    end

    @nodes << new_node
  end

  def pop
    if @nodes[-2]
      @nodes[-2].next = nil
    end

    @nodes.pop
  end

  def clean
    @nodes = []
  end

  def swap(node1, node2)

  end

  def append(node, new_node)

  end

  def remove(node)

  end
end

list = DoublyLinkedList.new
list.push(1)
list.push(2)
list.push(3)
