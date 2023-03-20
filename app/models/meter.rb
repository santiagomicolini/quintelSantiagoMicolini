class Meter
  def self.convert(unit, input_lenght)
    case unit
    when 'centimeters' then input_lenght * 100
    when 'milimeters' then input_lenght * 1000
    end
  end
end
