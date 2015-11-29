require 'spec_helper'

RSpec.describe Enrollment, type: :model do
  specify { expect(subject).to belong_to :course }
end
