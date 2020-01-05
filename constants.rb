class Ticket
  VENUES = ['Nai','Msa','Naks','Eldy']
  VENUES = ['Nai','Msa','Naks','Eldy']
  PRICES = ["119",'120','140']
  attr_accessor :venue

  def place(venue)
    if VENUES.include?(venue)
      @venue = venue
    else 
      raise ArgumentError,'Unknown venue'
    end
  end

  def price (price)
   if PRICES.include?(price)
  @price =  'Nai Tickets availabe for this: Ksh 140'
   else   
    puts  ' no ticket available for that price'
   end
  end
end 
obj = Ticket.new
obj.place('Nai')
obj.price('140')
Ticket::VENUES << "Gym"
puts Ticket::VENUES
