require_relative '../teacher'

describe Teacher do

  it 'tests that it is initialized correctly' do
    t = Teacher.new(12, name: 'Mathew', specialization: 'lawyer')
    expect(t).to have_attributes(name: 'Mathew', age: 12)
  end

  it 'can run services' do  
    teacher = Teacher.new(12, name: 'Mike', specialization: 'technician')
    expect(teacher.can_use_services?).to be(true)
  end
  
  it 'should convert to string correctly' do
    teacher = Teacher.new(12, name: 'Mike', specialization: 'technician')
    expect(teacher.to_s).to match(/^\[Teacher\] Name: Mike, ID: \d+?, Age: 12$/)
  end

end
