class Work < ActiveRecord::Base
  has_many :attributions

  before_save :ensure_fast_attribution

  def attribution
    fast_attribution_string
  end

  private

  def ensure_fast_attribution
    self.fast_attribution = attributions.map(&:full_name).to_sentence
  end
end
