class Kilogram
  def self.convert(unit, value)
    case unit
    when 'lbs' then value * 2.20
    when 'tn' then value / 1000
    end
  end
end
