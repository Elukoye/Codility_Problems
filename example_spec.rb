require_relative 'example'

describe '#move_contacts' do
  it "moves data from array from hash" do
    contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
    contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
    move_function = move_contacts(contact_data,contacts)
    expect(move_function).to eq({"Joe Smith"=>{:email=>"joe@email.com"}, "Sally Johnson"=>{:address=>"123 Main st."}})
  end
end

describe "#move_contact_2" do 
  it " uses iteration to populate data from array into a hash" do
    contact_data= ["joe@email.com", "123 Main st.", "555-123-4567"]
    contacts={ "Joe" =>{ }}
    fields= [:email,:address,:phone]
    move_function_2 = move_contact_2(contact_data,contacts,fields)
    expect(move_function_2).to eq({"Joe"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}})
  end
end 



