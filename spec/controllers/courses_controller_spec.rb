require 'spec_helper'

RSpec.describe CoursesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: 1
      expect(response).to have_http_status(:success)
    end
  end

end
