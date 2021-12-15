require_relative('./person')

class Student < Person
  def initialize(*args, classroom:, **kwargs)
    super(*args, **kwargs)
    self.classroom = classroom
  end
  
  def classroom=(classroom)
    @classroom = classroom
    @classroom.students.push(self) unless @classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
