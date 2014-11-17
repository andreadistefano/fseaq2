class AnnoScout
  def self.current
    return AnnoScout.new(Date.today)
  end
  def initialize(date)
    if date.month >= 9
      @year = date.year
    else
      @year = (date.year) - 1
    end
  end
  def to_s
  	return @year.to_s + "-" + (@year+1).to_s
  end
  def to_i
    return @year
  end
end