class Attribution < ActiveRecord::Base
  belongs_to :work
  belongs_to :citation

  before_save :ensure_position

  def full_name
    [name_first, name_middle, name_last].join(' ')
  end

  def mla_contributor_name(primary = true)
    primary ? mla_primary_contributor_name : mla_secondary_contributor_name
  end

  def name_middle_initial
    "#{name_middle.first}." if name_middle.present?
  end

  private

  def mla_primary_contributor_name
    "#{name_last}, #{name_first} #{name_middle_initial}"
  end

  def mla_secondary_contributor_name
    "#{name_first} #{name_middle_initial} #{name_last}"
  end

  def ensure_position
    if position.nil?
      candidate = 0
      while Attribution.where(position: candidate, work_id: work_id, citation_id: citation_id).where.not(id: id).present? do
        candidate += 1
      end
      self.position = candidate
    end
  end
end
