require './student'
require './teacher'

def load_books
  books = []
  books_save = JSON.parse(File.read('./datas/books.json'))
  books_save.each do |b|
    books << Book.new(b['title'], b['author'])
  end
  books
end

def load_persons
  persons = []
  persons_save = JSON.parse(File.read('./datas/persons.json'))

  persons_save.each do |p|
    persons << if p['classe'] == 'Student'
                 Student.new(p['age'], p['name'], parent_permission: p['parent_permission'])
               else
                 Teacher.new(p['specialization'], p['age'], p['name'])
               end
  end
  persons
end
