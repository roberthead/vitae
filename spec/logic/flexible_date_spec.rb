require 'spec_helper'

describe FlexibleDate do
  context "with a year only" do
    let(:flex_date) { FlexibleDate.new(2005) }

    specify { expect(flex_date.to_db).to eq "2005" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 1, 1)..Date.new(2005, 12, 31)) }

    specify { expect(flex_date.to_s).to eq "2005" }
  end

  context "with a year and a month" do
    let(:flex_date) { FlexibleDate.new(2005, 12) }

    specify { expect(flex_date.to_db).to eq "2005-12" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 12, 1)..Date.new(2005, 12, 31)) }

    specify { expect(flex_date.to_s).to eq "December 2005" }

    specify { expect(flex_date.to_s(month: :short)).to eq "Dec 2005" }
  end

  context "with a year and a month" do
    let(:flex_date) { FlexibleDate.new(2005, 12, 26) }

    specify { expect(flex_date.to_db).to eq "2005-12-26" }

    specify { expect(flex_date.date_range).to eq (Date.new(2005, 12, 26)..Date.new(2005, 12, 26)) }

    specify { expect(flex_date.to_s).to eq "December 26, 2005" }
  end
end
