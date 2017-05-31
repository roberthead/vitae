require 'spec_helper'

RSpec.describe AnnotationsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:annotation) { FactoryGirl.create(:annotation) }

    it "returns http success" do
      get :show, id: annotation
      expect(response).to have_http_status(:success)
    end
  end
end
