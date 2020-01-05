# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end 
  
end

class LinkedList
  #setup head and tail
  @head=nil
  @tail=nil
  def add(number)
    # your code here
    node=Node.new(number)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node=node
      @tail=node
    end
  end

  def get(index)
    # your code here
    node=@head
    i=0
    while (node!=nil && i<index)
     node = node.next_node
     i+=1
   end
  return node
  end
  
  # def add_at(index, number)
  #   new_node = Node.new(number)
  #   if @head.nil?
  #     @head = new_node
  #     @tail =new_node
  #   elsif
  #     index == 0
  #     @head = new_node
  #     new_node.next_node =@head 
  #   end
  # end 
  
  
 
  def get_node(index)
    current_node = @head
    count = 0 
    while current_node 
     if count === index
        return  current_node.value
     end
     count += 1 
     current_node = current_node.next_node
    end
  end
end


list = LinkedList.new



list.add(3)
list.add(5)

# list.add_at(1, 11)
# list.add_at(0, 13)
list.get_node(0)

puts list.get(2)
# => 11

puts list.get(3)
# => 5