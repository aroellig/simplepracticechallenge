require 'rails_helper'

RSpec.describe "Apis", type: :request do

  describe "GET /Doctors" do
    it "returns http success" do
      get "/api/Doctors"
      expect(response).to have_http_status(:success)
    end
  end

end
