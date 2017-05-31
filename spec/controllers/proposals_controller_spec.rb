require 'spec_helper'

RSpec.describe ProposalsController, type: :controller do
  describe "GET #show" do
    it "returns http success" do
      get :show, id: 'foo'
      expect(response).to have_http_status(:success)
    end
  end
end
