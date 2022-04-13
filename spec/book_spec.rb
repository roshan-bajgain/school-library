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

  it 'Take title and author' do
    book2 = Book.new('The Gorkha', 'Roshan')
    book2.author.should eql 'Roshan'
    book2.title.should eql 'The Gorkha'
  end
end
