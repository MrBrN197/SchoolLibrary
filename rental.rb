require 'date'

class Rental
  attr_accessor :date

  def initialize(date = DateTime.now())
    @date = date
  end

  def book=(book)
    @book = book
    @book.rentals.push(self) unless @book.rentals.include?(self)
  end
  
  def owner=(owner)
    @owner = owner
    @owner.rentals.push(self) unless @owner.rentals.include?(self)
  end

end