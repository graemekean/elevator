class Building
  #attr: name, postcode, floors, lifts
  #people/occupation

  attr_accessor :name, :post_code, :floors, :occupants, :lifts
  # attr_reader :lifts

  def initialize(options={})
    self.name = options[:name]
    self.post_code = options[:post_code]
    self.occupants = options[:occupants]
    self.floors = options.fetch(:floors, 1) # default value of one floor per building in case floors is not set
    @lifts = options[:lifts].to_i.times.map {Lift.new}
  end

  def entered_by(person)
    self.occupants += 1

  end

 


  def floors=(value)
    @floors = Integer(value)
  end

  # def exit_lifts

  # end

  # def entered_by

  # end





end