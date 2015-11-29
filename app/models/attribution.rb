class Attribution < ActiveRecord::Base
  belongs_to :work
  belongs_to :citation
end
