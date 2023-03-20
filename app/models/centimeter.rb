class Centimeter
  def self.convert(unit, input_lenght)
    case unit
    when 'milimeters' then input_lenght * 10
    when 'meters' then input_lenght / 100
    end
  end
end
