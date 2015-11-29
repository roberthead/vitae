class Work < ActiveRecord::Base
  has_many :attributions

  before_save :ensure_fast_attribution

  def attribution
    fast_attribution
  end

  def creation_date_string
    FlexibleDate.new(creation_flexdate).to_s
  end

  private

  def ensure_fast_attribution
    self.fast_attribution = attributions.map(&:full_name).to_sentence
  end
end
