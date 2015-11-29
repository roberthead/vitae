require 'spec_helper'

RSpec.describe Designation, type: :model do
  subject(:designation) { FactoryGirl.build(:designation) }

  specify { expect(designation).to be_valid }
end
