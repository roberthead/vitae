require 'spec_helper'

RSpec.describe Attribution, type: :model do
  subject(:attribution) { FactoryGirl.build(:attribution) }

  specify { expect(attribution).to be_valid }
end
