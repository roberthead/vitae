class Work < ActiveRecord::Base
  has_many :attributions, -> { order(:position) }
  belongs_to :course

  before_save :ensure_fast_attribution

  def attribution
    fast_attribution
  end

  def attribution_initials
    attribution.to_s.strip.split(/\s+/).map(&:first).join
  end

  def creation_date_string(options = {})
    FlexibleDate.new(creation_flexdate).to_s(options)
  end

  private

  def ensure_fast_attribution
    self.fast_attribution = attributions.map(&:full_name).to_sentence
  end
end
