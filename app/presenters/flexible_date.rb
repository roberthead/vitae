class FlexibleDate < Struct.new(:year_or_db_string, :month_or_season, :day)
  MONTHS = %w{January February March April May June July August September October November December}
  ABBREVIATED_MONTHS = MONTHS.map { |month| month[0..2] }
  SEASONS = %w{Winter Spring Summer Fall}

  attr_accessor :year, :month, :season

  def initialize(*)
    super
    populate_attributes
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
    if month
      "#{day} #{month_string(options[:month])} #{year}".strip
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

  def populate_attributes
    if year_or_db_string.is_a? String
      elements = year_or_db_string.split('-')
      if elements.length > 1
        self.year = elements[0].to_i
        populate_month_or_season(elements[1])
        self.day = elements[2].try(:to_i)
      end
    end
    self.year ||= year_or_db_string.try(:to_i)
    populate_month_or_season
  end

  def populate_month_or_season(local_month_or_season = month_or_season)
    if local_month_or_season.present? && month.nil? && season.nil?
      case local_month_or_season
      when String, Symbol
        local_month_or_season = local_month_or_season.to_s.titlecase
        if MONTHS.include? local_month_or_season
          self.month = MONTHS.index(local_month_or_season) + 1
        elsif ABBREVIATED_MONTHS.include? local_month_or_season
          self.month = ABBREVIATED_MONTHS.index(local_month_or_season) + 1
        elsif SEASONS.include?(local_month_or_season)
          self.season = local_month_or_season
        elsif local_month_or_season.to_i.in?(1..12)
          self.month = local_month_or_season.to_i
        end
      when Integer
        self.month = local_month_or_season
      end
    end
  end
end
