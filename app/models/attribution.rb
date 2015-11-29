class Attribution < ActiveRecord::Base
  belongs_to :work
  belongs_to :citation

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
end
