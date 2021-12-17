require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './classroom'

class App
  def initialize
    @books = []
    @people = []
    @main_classrom = Classroom.new('main classroom')
  end

  def list_all_books
    @books.each do |book|
      puts
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_all_people
    @people.each_with_index { |p, idx| puts p }
  end

  def create_student
    print 'Age: '
    age = Integer(gets.chomp)
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission [y/n]: '
    parent_permission = gets.chomp.downcase == 'y'
    @people << Student.new(age, name: name, parent_permission: parent_permission, classroom: @main_classrom)
  end

  def create_teacher
    print 'Age: '
    age = Integer(gets.chomp)
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    spc = gets.chomp
    @people << Teacher.new(age, name: name, specialization: spc)
  end

  def create_person
    print 'Do you want to create a student(1) or a teacher(2)? [Input the number]: '
    selector = Integer(gets.chomp)
    case selector
    when 1 then create_student
    when 2 then create_teacher
    else puts 'Invalid selection'
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
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
