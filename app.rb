require './person'
require './student'
require './teacher'
require './book'
require './classroom'
require './rental'

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
end    