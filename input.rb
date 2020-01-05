
# class Ticket 
#   def initialize(venue)
#     @venue = venue   
#   end

#   def venue 
#     @venue
#   end 

#  def original_price= price
#     @original_price= price
#  end

#  def old_price
#     @original_price
#  end

#  def discount= percent
#    @new_discount= @original_price-((@original_price * percent)/100.to_f)
#  end 

#  def new_discount
#   @new_discount
#  end 

#   def date= (date)
#    @date= date.split("-")
#    @date.each_with_index do |val,index|
#    if @date.to_i < 100 && month.length < 2 && date.length < 2
#     puts " please input date in the yyyy-mm-dd format"
#   else  
#     @date=date
#   end
#  end 
# end
# ticket = Ticket.new("Mombasa")
# puts ticket.date=("2019-10-12")


#implementing linter using a stack d.s
#(var x ={y:[1,2,3]})
class Linter    
  attr_reader :error

  def initialize
    @stack =[]
  end

  def lint(text)
    text.chars.each do |char|
      if opening_brace?(char) 
        @stack.push(char) 

      elsif closing_bracket?(char)
        if closing_matches_opening?(char)
          @stack.pop 
        else  
          @error= "Mismatched/missing pair for closing brace: #{char}  in your code please fix it !  "
        
        end
      end
    end 
    if @stack.any?
      @error = " This bracket opening bracket: / #{@stack.last} / has no matching closing pair "
    end
  end 


  private
  def opening_brace?(char)
    ["(","[","{"].include?(char)
  end 

  def closing_bracket?(char)
    [")","]","}"].include?(char)
  end  

  def last_bracket_inside_stack
    @stack.last
  end 

  def this_closing_bracket?(char)
    {")"=>"(","]" =>"[","}"=>"{"}[char]
  end
   
  def closing_matches_opening?(char)
    this_closing_bracket?(char) == last_bracket_inside_stack
  end
end

linter = Linter.new 
linter.lint("Hello world}")
puts linter.error


# class Linter
#    attr_reader :error 

#   def initialize
#     # We use a simple array to serve as our stack:
#      @stack = [] 
#   end 
    
#   def lint(text)
#    # We start a loop which reads each character in our text: 
#     text.each_char.with_index do |char, index| 
#       if opening_brace?(char) 
#         # If the character is an opening brace, we push it onto the stack:
#           @stack.push(char) 
#       elsif closing_brace?(char) 
#         if closes_most_recent_opening_brace?(char)
#           # If the character closes the most recent opening brace, # we pop the opening brace from our stack:
#           @stack.pop 
#         else # if the character does NOT close the most recent opening brace
#           @error = "Incorrect closing brace: #{char} at index #{index}" 
#           return 
#         end 
#       end 
#     end 
#     if @stack.any? 
#       # If we get to the end of line, and the stack isn't empty, that means
#        # we have an opening brace without a corresponding closing brace:
#        @error = "#{@stack.last} does not have a closing brace" 
#     end 
#   end 
#   private 
#   def opening_brace?(char)
#      ["(", "[", "{"].include?(char) 
#   end 
#   def closing_brace?(char)
#      [")", "]", "}"].include?(char)
#    end 
#    def opening_brace_of(char) 
#     {")" => "(", "]" => "[", "}" => "{"}[char] 
#    end 
#    def most_recent_opening_brace
#      @stack.last 
#     end 
#     def closes_most_recent_opening_brace?(char) 
#       opening_brace_of(char) == most_recent_opening_brace 
#     end
#   end 
  linter = Linter.new 
  linter.lint("(Hello world)")
  puts linter.error