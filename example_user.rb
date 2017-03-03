class User
  attr_accessor :name, :email #Getter and setter methods

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}"
  end
end
