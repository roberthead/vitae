class Enrollment < ActiveRecord::Base
  belongs_to :course

  before_save :ensure_credits

  private

  def ensure_credits
    self.credits ||= course.try(:credits_min)
  end
end
