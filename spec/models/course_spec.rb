require 'spec_helper'

RSpec.describe Course, type: :model do
  subject(:course) { FactoryGirl.build(:course) }

  specify { expect(course).to be_valid }
end
