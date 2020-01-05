class Factorial
  def factorial_of(n)
    (1..n).inject(:*)
  end
end 
calc = Factorial.new
puts calc.factorial_of(5)
puts calc.factorial_of(3)



describe "#factorial_of" do 
  let!(:calc){Factorial.new}

  it 'returns factorial of n' do 
    calc = Factorial.new
    expect(calc.factorial_of(5)). to eq(120)   
  end 

  it 'finds the factorial of 3' do
    expect(calc.factorial_of(3)).to eq(6)
  end
end