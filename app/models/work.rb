class Work < ActiveRecord::Base
  def attribution
    fast_attribution_string
  end
end
