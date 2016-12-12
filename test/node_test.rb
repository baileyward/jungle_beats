require "minitest/autorun"
require "minitest/pride"
require './lib/node'
require "./lib/linkedlist"

class NodeTest < Minitest::Test
  def test_if_it_is_a_node
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_if_there_is_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new("plop")
    assert_nil node.next_node
  end

end
