class Person
# attr: name, destination
# methods: none



attr_accessor :name, :destination, :in_lift, :current_level
#more to include - :weight, :clearance,

def initialize(options={})
  self.name = options[:name]
  self.destination = options[:destination]
  # self.weight = options[:weight]
  # self.clearance = options[:clearance]
  self.in_lift = options[:in_lift]
  self.current_level = options[:current_level]
end

def enter_lift
  self.in_lift = true
  self.current_level = lift.current_floor
  b.passengers += 1
end

def exit_lift
  self.in_lift = false
end

# def self.breed(person1, person2)
#   options = {
#     weight: [person1, person2].sample.weight,
#     name: [person1, person2].sample.name,
#     current_level: [person1, person2].sample.current_level,
#     destination: [person1, person2].sample.destination
#   }
# end

# def self.replicate(person)
#   Person.new(age: person.age,
#               first_name: person.first_name,
#               last_name: person.last_name,
#               weight:)

# end


def set_destination()
self.destination
end

# def press_up()

# end

# def press_down()

# end

# def enter_building(person, building)
#   @occupants << person
# end

# def enter_lift(lift)
#   building.lift.passengers << person

# end


end