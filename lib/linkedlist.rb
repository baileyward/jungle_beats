class LinkedList
  attr_reader :head

  def initialize()
    @head = nil
  end

  def prepend(data)
    current = @head
    node = Node.new(data)
    #creating a link between the new node and head node.
    node.next_node = current
    #setting head = to new node
    @head = node

  end

  def append(data)
    # if this is the first node set it to head
    if @head.nil?
      @head = Node.new(data)
    else
      # if this is the second or more node ...
      # Start by looking from head
      current = @head
      # Search for the tail and when found set it to current
      while current.next_node != nil
        current = current.next_node
      end

      # Now that tail is set to current
      # 1. Make the new node
      # head -> node2 -> tail/current     new_node
      # 2. Set the new node to the tail's next_node
      # head -> node2 -> tail/current -> new_node
      node = Node.new(data)
      current.next_node = node

    end

  end

  def insert(index,value)
    current = @head
    count = 1
    while count < index
      # advance current
      current = current.next_node
      count = count + 1
    end
    puts "Will go after: " + current.data

    node = Node.new(value)
    third = current.next_node

    # fisrt, save off current's next_node because it will be node's next_node

    current.next_node = node
    node.next_node = third

  end

  def count
    if @head.nil?
      0
    else
      current = @head
      count = 1
      while current.next_node != nil
        count = count + 1
        current = current.next_node
      end
      count
    end

  end

  def to_string
    current = @head
    data = current.data
    while current.next_node != nil
      current = current.next_node
      data = data + " " + current.data
    end

    data

  end
end
