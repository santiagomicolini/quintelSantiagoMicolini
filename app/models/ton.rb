class Ton
  def self.convert(unit, value)
    case unit
    when 'kg' then value * 1000
    when 'lbs' then value * 2204.62
    end
  end
end
