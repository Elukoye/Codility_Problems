# class Printer
#   def initialize
#     @queue = []
#   end

#   def add_to_printer(document)
#     @queue.push(document) 
#   end 

#   def run
#     while @queue.any?
#       print(@queue.shift)
#     end
#   end 

#   def print(document)
#     puts document
#   end
# end 
# printer =   Printer.new
# printer.add_to_printer("one")
# printer.add_to_printer("two")
# printer.add_to_printer("three")
# printer.add_to_printer("three")
# puts printer.run 
c = Time.now
def product_1_to_n(n)
  # We assume n >= 1.

  result = 1

  (1..n).each do |num|
    result *= num
  end

  result
end 
d = Time.now
a = Time.now
def product_1_to_n(n)
  
  # We assume n >= 1.
  n > 1 ? n * product_1_to_n(n - 1) : 1
end 
b = Time.now
puts product_1_to_n(5)
puts (b - a).ceil 
puts (d - c).ceil