require_relative '../book'
require_relative '../rental'

describe 'Book' do
  before(:each) do
    @book = Book.new('Harry poter', 'jk rouling')
  end
  it 'Take title and author' do
    @book.author.should eql 'jk rouling'
    @book.title.should eql 'Harry poter'
  end
  # it "Add new book renter" do
  #     @rental = rental.new("2022-01-02", "Roshan")
  #     @book.add_rental(@rental)
  #     @expect(@book.rentals).should eq([@rental])
  # end
  # it "Add new book rental" do
  #     @book.add_rental(person.new( "John Doe", "2000-08-20"))
  #     @book.rentals.should eql [person.new("John Doe", "2000-08-20")]
  #   end
end
