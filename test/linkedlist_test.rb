require "minitest/autorun"
require "minitest/pride"
require './lib/node'
require "./lib/linkedlist"

class LinkedlistTest < Minitest::Test
  def test_is_list
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_first_append_data
    list = LinkedList.new
    list.append("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
    assert_nil list.head.next_node
    assert_equal 1, list.count
  end

  def test_list_count_zero_elements
    list = LinkedList.new

    assert_equal 0, list.count
  end

  def test_list_count_one_element
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end

  def test_list_to_string
    # create a variable called 'list' that is an instance of 'LinkedList'
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_list_to_string_again
    # create a variable called 'list' that is an instance of 'LinkedList'
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("woo")

    assert_equal "doop deep woo", list.to_string
  end

  def test_list_preprend
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("woo")

    assert_equal "woo doop deep", list.to_string
  end


  def test_list_insert
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.insert(1, "woo")

    assert_equal "doop woo deep", list.to_string
  end

end
