require 'date'

class Rental
  attr_accessor :date
  attr_reader :owner

  def initialize(book, owner, date = DateTime.now())
    @date = date
    self.book = book
    self.owner = owner
  end

  def to_s
    "Date: #{@date}, Book \"#{@book.title}\" by #{@book.author}"
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
