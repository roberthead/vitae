require 'spec_helper'

RSpec.describe WorksController, type: :controller do
  describe "#index" do
    def make_request
      get :index
    end

    context "after the request" do
      before { make_request }
      let(:view) { assigns(:view) }

      specify { expect(response).to be_success }
      specify { expect(view).to be_present }

      context "with works in the system" do
        before do
          `rake db:seed`
        end

        specify { expect(view[:works]).to be_present }
      end
    end
  end

  describe "#show" do
    specify do
      get :show, id: 1
      expect(response).to be_success
    end
  end
end
