class Lift
# attr: go_up, go_down, capacity, current_floor, destination_floor, passengers, direction
# methods: overloaded?, det_in, get_out

attr_accessor :current_floor, :destination_floor, :direction, :name, :max_people, :occupied
attr_reader :passengers, :max_passengers, :max_weight

def initialize(options={})
  self.current_floor = 0
  @max_people = 8
  # self.current_floor = 
  # self.direction = 
  # self.name = 
  @passengers = []

end



# def enter(passenger)
#   passengers << passenger unless exceeds_capacity()
#   end

# def self.go_up
#   self.current_floor += 1
# end

# def self.go_down
#   self.current_floor -= 1
# end

def self.enter(passenger)
  @passengers << passenger unless overloaded?

end

def catch_lift(person)
  @passengers << person
  # unless exceeds_capacity()
end


# def exceeds_capacity(passenger)

# end

# def self.leave(passenger)

#   passengers.delete_at(passenger)
#   occupancy << passenger
# end

# def overloaded? # predicate method returns boolean
#   passengers.size >= max_people
# end

def travel_to!(floor)
  passengers.each {|passenger| passenger.current_floor = self.current_floor}

end



end