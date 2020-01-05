#RECURSIVE QUICKSORT WITH SUBARRAYS
# first check if array has one element or is empty
#partition the array
#choose pivot as the last element 
#if el is less than pivot push it to left array
#if el is greater than pivot push it to right array
#sort left and right arrays recursively and join the again 

def quick_sort(array)
  return array if array.length <= 1
  pivot = array.pop 
  left_array,right_array= [],[]
   array.each do |i| 
    i < pivot ? left_array.push(i) : right_array.push(i)
   end
  #quicksort the subarrays recursively 
  sorted_left = quick_sort(left_array)
  sorted_right = quick_sort(right_array)
  sorted_left + [pivot] + sorted_right
end 

#INPLACE QUICKSORT USING INDICES AND SWAPPING


#helper method
def partition(arr, low = 0,high = arr.length - 1)
  left_pointer = low
  right_pointer = high
  pivot = arr[high]
  
  (low...high).each do |index|
    value = arr[index] 

    if value >  pivot 
      arr[index],arr[right_pointer]= arr[right_pointer],arr[index]
      left_pointer += 1
    end

  
  end
end


array =[0,1,2,5,6,3] 
puts partition(array)