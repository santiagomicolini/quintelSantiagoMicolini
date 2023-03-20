class Milimeter
  def self.convert(unit, input_lenght)
    case unit
    when 'meters' then input_lenght / 100
    when 'centimeters' then input_lenght / 10
    end
  end
end
