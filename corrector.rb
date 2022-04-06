class Nameable
  def correct_name
    raise NotImplementedError
  end
end    

class Corrector < person
  attr_accessor :name

  def correct_name(name)
    if name.length >= 10
      name.capitalize[0..9]
    else
      name.capitalize
    end
  end
end
