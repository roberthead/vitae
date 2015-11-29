require 'spec_helper'

RSpec.describe Annotation, type: :model do
  subject(:annotation) { FactoryGirl.build(:annotation) }

  specify do
    expect(annotation).to be_valid
  end
end
