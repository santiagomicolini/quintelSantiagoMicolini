class Pound
  def self.convert(unit, value)
    case unit
    when 'kg' then value * 0.453592
    when 'tn' then value / 0.0004535920000001679
    end
  end
end
