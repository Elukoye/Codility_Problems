require_relative 'stacklike'
class Stack 
  include Stacklike 
end  
s = Stack.new
s.create_stack
 s.add_to_stack('item one')
 s.add_to_stack('item two')
 s.add_to_stack('item three')
 s.add_to_stack('item four')
puts s.create_stack
s.take_from_stack
s.create_stack
s.take_from_stack
puts s.create_stack

 



