require_relative '../student'

describe 'Studen' do
  before(:each) do
    @student = Student.new('22', 'Harry poter', 'true')
  end
  it 'Take age, name and parent_permission' do
    expect(@student.age).to eq '22'
    expect(@student.name).to eq 'Harry poter'
    expect(@student.parent_permission).to eq 'true'
  end
end
