class Citation < ActiveRecord::Base
  has_many :attributions, -> { order "position" }

  def mla_attribution
    primary = true
    attributions.map do |attribution|
      attribution.mla_contributor_name(primary).tap { primary = false }.squish
    end.to_sentence
  end
end
