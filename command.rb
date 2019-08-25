class Command
  def exec(*args)
    raise NotImplementedError.new
  end
end