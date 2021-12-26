require_relative '../student'

describe Student do
  before(:each) do
    @classroom_mock = double('classroom')
    @students = []
    allow(@classroom_mock).to receive(:students).and_return(@students)
  end

  it 'tests that Student is initialized correctly' do
    s = Student.new(12, name: 'Mathew', classroom: @classroom_mock)
    expect(s).to have_attributes(name: 'Mathew', age: 12)
    expect(@students.length).to be(1)
    expect(@students).to contain_exactly(s)
  end

  it 'tests that Student stores students correctly' do
    s = Student.new(12, name: 'Mathew', classroom: @classroom_mock)
    s.classroom = @classroom_mock
    expect(@students.length).to be(1)
    expect(@students).to contain_exactly(s)
  end
end
