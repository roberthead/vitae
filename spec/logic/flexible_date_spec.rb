require 'spec_helper'

describe FlexibleDate do
  context "with a year only" do
    let(:flex_date) { FlexibleDate.new(2005) }

    specify { expect(flex_date.to_db).to eq "2005" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 1, 1)..Date.new(2005, 12, 31)) }
  end

  context "with a year and a month" do
    let(:flex_date) { FlexibleDate.new(2005, 12) }

    specify { expect(flex_date.to_db).to eq "2005-12" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 12, 1)..Date.new(2005, 12, 31)) }
  end

  context "with a year and a month" do
    let(:flex_date) { FlexibleDate.new(2005, 12, 26) }

    specify { expect(flex_date.to_db).to eq "2005-12-26" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 12, 26)..Date.new(2005, 12, 26)) }
  end
end
