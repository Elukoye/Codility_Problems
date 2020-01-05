# def duplicates(arr1, arr2)
#   # write your code here
#   #iterate thru arr1 & use its values to find index positions in arr2
#   #inside loop , get the index of arr2 using values in arr1 then delete 
#   #return what reamins in arr2
#   arr1.each do |i|
#       arr2.delete_at(arr2.index(i))
#   end 
#   puts arr2
# end 
# duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# # => [204, 205, 206] 

def add_all(n)
   if n  / 3 - 2 < 3
     return n
   else  
    (n / 3 - 2) + add_all(n / 3 - 2)
   end
end 
puts add_all(1969)