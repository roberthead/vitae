class FlexibleDate < Struct.new(:year, :month, :day)
  MONTHS = %w{January February March April May June July August September October November December}

  def to_db
    [year, month, day].select(&:present?).join('-')
  end

  def date_range
    date_range_start..date_range_end
  end

  def to_s(options = {})
    if day
      "#{month_string(options[:month])} #{day}, #{year}"
    elsif month
      "#{month_string(options[:month])} #{year}"
    else
      year.to_s
    end
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

  def month_string(format = nil)
    if month
      format.to_s =~ /short/i ? month_short_string : month_long_string
    end
  end

  def month_long_string
    MONTHS[month - 1]
  end

  def month_short_string
    MONTHS[month - 1][0..2]
  end
end
