def greater_than(arr)
 arr.each do |n|
   puts n if n > 5
  end
end

 def odd_number(arr)
  arr.select{|n| n.odd?}
 end

 def add_after(arr,num)
  arr << num
 end

 def add_before(arr,num)
   arr.unshift(num)
 end

 def delete_and_add(arr,num)
  arr.each do |n|
    arr[arr.length - 1 ] = 3
   end
 end
 

puts greater_than( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts odd_number( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts add_before([1, 2, 3, 4, 5, 6, 7, 8, 9, 10],0)
puts delete_and_add([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11],3)

describe '#greater_than' do 
  it 'takes an array and returns values greater than 5' do
    expect(greater_than( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end
end

describe '#odd_number' do
  it 'takes an array and returns the odd numbers' do
    expect(odd_number( [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])).to eq([1, 3, 5, 7, 9])
  end
end

describe "#add_after" do
it "add a given num to the end of the original array" do
  expect(add_after([1, 2, 3, 4, 5, 6, 7, 8, 9, 10],11)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11])
end
end

describe "#add_before" do
  it "preppends a number to the string" do
    expect(add_before([1, 2, 3, 4, 5, 6, 7, 8, 9, 10],0)).to eql([0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  end
end 

describe "#delete_and_add" do
  it "deletes a number and adds a new one"do
    expect(delete_and_add([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,11],3)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3])
  end
end

describe "#remove_duplicates" do
  it "removes duplicates form an array" do
    expect(remove_duplicates(arr)).to eq()
  end
end