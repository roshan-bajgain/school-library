def Save_book(books)
 books_save = []
books.each{ |o| 
  books_save << { title: o.title, author: o.author }
}

ruby = JSON.generate(books_save)

File.open("data.txt", "w") { |f| f.write "#{ruby}" }
end    

def Save_rental(rentals)
  data =[]
  rentals.each do |rental|
    data.push({date: rental.date, person_id: rental.person.id, book_id: rental.book.id})
  end

  File.write('./rental.json', JSON.generate(data))
end 