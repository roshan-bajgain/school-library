require_relative '../person'

describe 'Person' do
  before(:each) do
    @person = Person.new('55', 'roshan', parent_permission: true)
  end
  it 'Take age, name and parent_permission' do
    @person.age.should eql '55'
    @person.name.should eql 'roshan'
    @person.parent_permission.should eql true
  end
end
