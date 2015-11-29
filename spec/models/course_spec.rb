require 'spec_helper'

RSpec.describe Course, type: :model do
  subject(:course) { FactoryGirl.build(:course) }

  specify { expect(course).to be_valid }

  describe "#course_code=" do
    specify do
      expect {
        course.course_codes = ["MUS 541", "SALAD 255"]
        course.save
      }.to change {
        course.designation_codes
      }.to("MUS 541, SALAD 255")
    end

    specify do
      expect {
        course.course_codes = ["MUS 541", "SALAD 255"]
        course.save
      }.to change {
        course.designation_codes.split(', ').length
      }.from(0).to(2)
    end
  end

  describe ".untaken" do
    let(:enrollment) { FactoryGirl.build(:enrollment) }
    let(:course_taken) { enrollment.course }

    before do
      course.save
      enrollment.save
      Course.all.include?(course)
      Course.all.include?(course_taken)
    end

    specify { course; expect(Course.untaken).to include(course) }
    specify { expect(Course.untaken).not_to include(course_taken) }
  end
end
