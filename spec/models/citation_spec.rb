require 'spec_helper'

RSpec.describe Citation, type: :model do
  subject(:citation) { FactoryGirl.build(:citation) }

  specify do
    expect(citation).to be_valid
  end

  context "with contributors" do
    let(:primary_contributor) { FactoryGirl.build(:attribution, citation: citation) }
    let(:secondary_contributor_1) { FactoryGirl.build(:attribution, citation: citation) }
    let(:secondary_contributor_2) { FactoryGirl.build(:attribution, citation: citation, editor: true) }
    let(:expected_attribution_pattern) do
      /#{primary_contributor.name_last}, #{primary_contributor.name_first}( \w\.)?, #{secondary_contributor_1.name_first}( \w\.)? #{secondary_contributor_1.name_last}, and Ed\. #{secondary_contributor_2.name_first}( \w\.)? #{secondary_contributor_2.name_last}/
    end

    before do
      citation.attributions << primary_contributor
      citation.attributions << secondary_contributor_1
      citation.attributions << secondary_contributor_2
    end

    specify do
      expect(citation.mla_attribution).to match expected_attribution_pattern
    end
  end
end
