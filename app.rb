require './person'
require './student'
require './teacher'
require './book'
require './classroom'
require './rental'
require './lib/create_books'
require './lib/create_persons'
require './lib/create_rental'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def start_console
    puts 'Welcome to my School Library!'
    until list_of_options
      input = gets.chomp
      if input == '7'
        puts 'Thank You for using my School Library!'
        break
      end

      option input
    end
  end

  def list_all_books
    puts 'Database is empty! Add a book.' if @books.empty?
    @books.each { |book| puts "[Book] Title: #{book.title}, Author: #{book.author}" }
  end

  def list_all_persons
    puts 'Database is empty! Add a person.' if @persons.empty?
    @persons.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, Age: #{person.age}, id: #{person.id}"
    end
  end

  def create_person
    print 'To create a student, press 1, to create a teacher, press 2 : '
    option = gets.chomp

    case option
    when '1'
      @persons << CreatePerson.new.create_student
    when '2'
      @persons << CreatePerson.new.create_teacher
    else
      puts 'Invalid input. Try again'
    end
  end

  def create_book()
    @books << CreateBook.new.create_book
  end

  def create_rental
    @rentals << CreateRental.new.create_rental(@books, @persons)
  end

  def list_all_rentals
    puts 'To see person rentals enter the person ID: '
    @persons.each do |person|
      puts "id: #{person.id}"
    end
    id = gets.chomp.to_i
    puts 'Rented Books:'
    @rentals.each do |rental|
      if rental.person.id == id
        puts "Peson: #{rental.person.name}  Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
      else
        puts
        puts 'No records where found for the given ID'
      end
    end
  end
end
