require_relative('./person')

class Teacher < Person
  def initialize(*args, **kwargs)
    super(*args, **kwargs)
    @specialization = nil
  end

  def can_use_services?
    true
  end
end
