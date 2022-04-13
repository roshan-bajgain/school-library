require_relative '../student'

describe 'Studen' do
  before(:each) do
    @student = Student.new('22', 'Harry poter', 'true')
  end
  it 'Take age, name and parent_permission' do
    @student.age.should eql '22'
    @student.name.should eql 'Harry poter'
    @student.parent_permission.should eql 'true'
  end
end
