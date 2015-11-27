class FlexibleDate < Struct.new(:year, :month_or_season, :day)
  MONTHS = %w{January February March April May June July August September October November December}
  ABBREVIATED_MONTHS = MONTHS.map { |month| month[0..2] }
  SEASONS = %w{Winter Spring Summer Fall}

  attr_accessor :month, :season

  def initialize(*)
    super
    populate_month_or_season
  end

  def to_db
    if season
      [year, season].join('-')
    else
      [year, month, day].select(&:present?).join('-')
    end
  end

  def date_range
    date_range_start..date_range_end
  end

  def to_s(options = {})
    if day
      "#{month_string(options[:month])} #{day}, #{year}"
    elsif month
      "#{month_string(options[:month])} #{year}"
    elsif season
      "#{season} #{year}"
    else
      year.to_s
    end
  end

  def season?
    season.present?
  end

  private

  def date_range_start
    if day
      Date.new(year, month, day)
    elsif season
      Date.new(year, SEASONS.index(season) * 3 + 1)
    elsif month
      Date.new(year, month)
    elsif year
      Date.new(year)
    end
  end

  def date_range_end
    if day
      Date.new(year, month, day)
    elsif season
      Date.new(year, SEASONS.index(season) * 3 + 3).end_of_month
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

  def populate_month_or_season
    case month_or_season
    when String, Symbol
      self.month_or_season = self.month_or_season.to_s.titlecase
      if MONTHS.include? month_or_season
        self.month = MONTHS.index(month_or_season) + 1
      elsif ABBREVIATED_MONTHS.include? month_or_season
        self.month = ABBREVIATED_MONTHS.index(month_or_season) + 1
      elsif SEASONS.include?(month_or_season)
        self.season = month_or_season
      end
    when Integer
      self.month = month_or_season
    end
  end
end
