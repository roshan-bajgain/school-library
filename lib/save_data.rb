require './student'
require './teacher'

def save_books(books)
  books_save = []
  books.each do |b|
    books_save << { title: b.title, author: b.author }
  end

  ruby = JSON.generate(books_save)

  File.write('books.json', ruby.to_s)
end

def save_persons(persons)
  persons_save = []
  persons.each do |p|
    persons_save << if p.instance_of? Student
                      { id: p.id, classe: 'Student', parent_permission: p.parent_permission, age: p.age, name: p.name,
                        classroom: p.classroom }
                    else
                      { id: p.id, classe: 'Teacher', specialization: p.specialization, age: p.age, name: p.name }
                    end
  end

  ruby = JSON.generate(persons_save)

  File.write('persons.json', ruby.to_s)
end