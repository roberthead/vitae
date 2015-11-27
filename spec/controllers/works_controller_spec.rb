require 'spec_helper'

RSpec.describe WorksController, type: :controller do
  describe "#index" do
    specify do
      get :index
      expect(response).to be_success
    end
  end

  describe "#show" do
    specify do
      get :show, id: 1
      expect(response).to be_success
    end
  end
end
