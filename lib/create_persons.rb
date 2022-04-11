class CreatePerson 
    def inputs
        puts 'Create a new student'
        print 'Enter student age: '
        age = gets.chomp.to_i
        print 'Enter name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp.downcase
        [age, name, parent_permission]
    end    
    def create_student
        age, name, parent_permission = inputs
        case parent_permission
        when 'n'
          student = Student.new(age, name, parent_permission: false)
          puts 'Student doesnt have parent permission, cant rent books'
        when 'y'
          student = Student.new(age, name, parent_permission: true)
          puts 'Student created successfully'
        end
        student
      end
end    