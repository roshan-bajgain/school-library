require_relative '../person'

describe 'Person' do
  before(:each) do
    @person = Person.new('55', 'roshan', parent_permission: true)
  end
  it 'Take age, name and parent_permission' do
    expect(@person.age).to eq '55'
    expect(@person.name).to eq 'roshan'
    expect(@person.parent_permission).to eq true
  end
end
