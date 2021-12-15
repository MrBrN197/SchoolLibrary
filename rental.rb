require 'date'

class Rental
  attr_accessor :date

  def initialize(book , owner, date = DateTime.now())
    @date = date
    self.book = book
    self.owner = owner
  end

  def book=(book)
    puts "Setting Book"
    @book = book
    @book.rentals.push(self) unless @book.rentals.include?(self)
  end
  
  def owner=(owner)
    puts "Setting Owner"
    @owner = owner
    @owner.rentals.push(self) unless @owner.rentals.include?(self)
  end

end