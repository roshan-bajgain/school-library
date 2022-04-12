def Save_book(books)
 books_save = []
books.each{ |o| 
  books_save << { title: o.title, author: o.author }
}

ruby = JSON.generate(books_save)

File.open("data.txt", "w") { |f| f.write "#{ruby}" }
end    