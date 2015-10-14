require 'pry-byebug'

require_relative 'building'
require_relative 'lift'
require_relative 'person'

b = Building.new(name: "Argyle House", post_code: 'EH3 9DR', floors: 11, lifts: 1, occupants: 0)

# l = Lift.new(name: "north", passengers: 0, current_floor: 0, max_people: 8)

# b2 = Building.new(name: "Another House", post_code: 'EH5 6TR', lifts: 4, occupants: 0)

graeme = Person.new(name: "Graeme", destination: 5, weight: 12.5, clearance: 5, current_level: 0)

luke = Person.new(name: "Luke", destination: 2, weight: 12, clearance: 4, current_level: 0)

lift = Lift.new(name: "lift1", current_level: 0)


[graeme, luke].each{|person| b.entered_by(person)
}



# b.entered_by graeme
lift.catch_lift luke

# b.lifts.first.travel_to! 6
# b.catch_lift luke




binding.pry;""






# b.exit_lifts
# b.lifts.first.travel_to! 18
# luke.destination = 9
# b.catch_lift graeme