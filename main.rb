class App
  def list_all_books
    puts 'listing all books'
  end

  def list_all_people
    puts 'listing all people'
  end

  def create_person
    puts 'creating person'
  end

  def create_book
    puts 'creating book'
  end

  def create_rental
    puts 'creating rental'
  end

  def list_all_rentals
    puts 'list all rentals'
  end

  def handle_input
    n = Integer(gets.chomp)
    case n
    when 1 then list_all_books
    when 2 then list_all_people
    when 3 then create_person
    when 4 then create_book
    when 5 then create_rental
    when 6 then list_all_rentals
    when 7
      puts 'Goodbye'
      exit
    else
      puts 'Please select a number between 1-7'
    end
  end

  def start
    puts 'Welcome to School Library App!'
    puts ''
    puts 'Please choose an option by entering a number:'
    loop do
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      handle_input
    end
  end
end

def main
  app = App.new
  app.start
end

main
