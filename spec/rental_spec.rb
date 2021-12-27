require_relative '../rental'

describe Rental do
  it 'tests that the Rental is initialized correctly' do
    book = double('book')
    owner = double('owner')
    rentals = []
    expect(book).to receive(:rentals).at_least(:once).and_return(rentals)
    expect(owner).to receive(:rentals).at_least(:once).and_return(rentals)
    rental = Rental.new(book, owner)
  end
end