require 'spec_helper'

RSpec.describe Citation, type: :model do
  subject(:citation) { FactoryGirl.build(:citation) }

  specify do
    expect(citation).to be_valid
  end
end
