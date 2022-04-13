require './student'
require './teacher'

def Save_book(books)
  books_save = []
  books.each do |o|
    books_save << { title: o.title, author: o.author }
  end

  ruby = JSON.generate(books_save)

  File.write('data.txt', ruby.to_s)
end

def save_persons(persons)
  persons_save = []
  persons.each do |p|
    if p.instance_of? Student
      persons_save << { class: 'Student', parent_permission: p.parent_permission, age: p.age, name: p.name,
                        classroom: p.classroom }
    elsif persons_save << { class: 'Teacher', specialization: p.specialization, age: p.age, name: p.name }
    end
  end

  ruby = JSON.generate(persons_save)

File.open("data.txt", "w") { |f| f.write "#{ruby}" }
end    

def Save_rental(rentals)
  data =[]
  rentals.each do |rental|
    data.push({date: rental.date, person_id: rental.person.id, book_id: rental.book.id})
  end
  File.write('./rental.json', JSON.generate(data))
end
