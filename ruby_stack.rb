
class Stack 
 #create empty array
  def initialize
    @new_arr = Array.new
  end

  def push(num)
    @new_arr.push(num)
  end 

  def pop
   num = @new_arr.pop
  end 

  def peek
    num =@new_arr[@new_arr.length - 1]
  end

  def is_empty?
    return true if @new_arr.length == 0
  end
end 

stack = Stack.new
stack.push(2)
stack.push(3)
stack.peek
puts stack.is_empty?

