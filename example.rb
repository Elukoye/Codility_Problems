#first method
# def move_contacts(contact_data,contacts)
#    contacts["Joe Smith"][:email] =contact_data[0][0]
#    contacts["Sally Johnson"][:address] = contact_data[0][1]
#    contacts   
# end 
#  contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
#  contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
#  puts move_contacts(contact_data,contacts) 

# #second_method
# def move_contact_2(contact_data,contacts,fields)
#   #array
#   contact_data= ["joe@email.com", "123 Main st.", "555-123-4567"]
#   #hash
#   contacts={ "Joe" =>{ }}
#   #array
#   fields= [:email,:address,:phone]
#   contacts.each do |name,hash|
#     fields.each do |symbol|
#       hash[symbol] = contact_data.shift
#     end
#   end
# end 
# contact_data= ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts={ "Joe" =>{ }}
# fields= [:email,:address,:phone]
# puts move_contact_2(contact_data,contacts,fields) 

class Publication
  attr_accessor :publisher
end 

class Magazine < Publication
  attr_accessor :editor
end  

magazine = Magazine.new
magazine.publisher='Manning Publications'
magazine.editor='David.A Black'
puts "Well Grounded Rubyist is published by #{magazine.publisher} and edited by #{magazine.editor}"