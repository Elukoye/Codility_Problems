def add(one,two)
    one + two
end 

add(1,2)


describe '#add' do
  it "prints out the sum" do

    expect(add(1,2)).to eq(3)
  end
end