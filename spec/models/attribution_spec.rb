require 'spec_helper'

RSpec.describe Attribution, type: :model do
  subject(:attribution) { FactoryGirl.build(:attribution) }

  specify { expect(attribution).to be_valid }

  specify do
    expect {
      attribution.save
    }.to change {
      attribution.position.present?
    }.from(false).to(true)
  end
end
