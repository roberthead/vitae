class Work < ActiveRecord::Base
  def full_attribution
    [attribution, creation_date_string].select(&:present?).join(', ')
  end

  def creation_date_string
    FlexibleDate.new(creation_flexdate).to_s
  end
end
