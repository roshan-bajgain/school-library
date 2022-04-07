class Rental
    attr_accessor :data :book :person

    def initialize(data, book, person)
        @data = data
        @book = book
        @person = person
        person.rental << self
        book.rental << self
    end
end