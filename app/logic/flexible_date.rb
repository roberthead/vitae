class FlexibleDate < Struct.new(:year, :month, :day)
  def to_db
    [year, month, day].select(&:present?).join('-')
  end

  def date_range
    date_range_start..date_range_end
  end

  private

  def date_range_start
    if day
      Date.new(year, month, day)
    elsif month
      Date.new(year, month)
    elsif year
      Date.new(year)
    end
  end

  def date_range_end
    if day
      Date.new(year, month, day)
    elsif month
      Date.new(year, month).end_of_month
    elsif year
      Date.new(year).end_of_year
    end
  end
end
