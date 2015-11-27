require 'spec_helper'

RSpec.describe Work, type: :model do
  subject(:work) { FactoryGirl.build(:work) }

  specify { expect(work.title).to be_present }
end
