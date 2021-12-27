require_relative '../classroom'

describe Classroom do
  it 'test that Classroom is initialized correctly' do
    classroom = Classroom.new('classroom')
    expect(classroom).to have_attributes(label: 'classroom')
  end

  it 'test that Classroom is initialized correctly' do
    classroom = Classroom.new('classroom')
    student = double('student')
    expect(student).to receive(:classroom=).with(classroom)
    classroom.add_student(student)
    expect(classroom.students).to contain_exactly(student)
  end
end
