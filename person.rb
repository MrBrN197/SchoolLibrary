require_relative('./corrector')
class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1_000_000_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
    rental.owner = self
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age > 18
  end
end
