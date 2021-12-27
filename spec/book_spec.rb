require_relative '../book'



describe Book do

  it 'that Book is initialized correctly' do
    title = 'A Song of Ice and Fire'
    author = 'George R.R Martin'
    book = Book.new(title, author)
    expect(book).to have_attributes(title: title, author: author)
  end

  it 'test that the add_rental method works' do
    book = Book.new('title', 'author')
    rental = double('rental')
    expect(rental).to receive(:book=)
    book.add_rental(rental)
  end

end