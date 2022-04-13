require './book'
require './student'
require './rental'

describe Rental do
  context 'When testing the Rental class' do
    it 'should return only one rental when adding a rental to a student and a book' do
      person = Student.new(15, 'Harry', parent_permission: true)
      book = Book.new('title', 'author')
      Rental.new('2002/02/02', person, book)

      expect(person.rental.length).to eq 1
      expect(book.rental.length).to eq 1
    end
  end
end
