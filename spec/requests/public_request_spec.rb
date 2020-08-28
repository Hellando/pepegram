require 'rails_helper'

RSpec.describe "Publics", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/public/home"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get "/public/help"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/public/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/public/contact"
      expect(response).to have_http_status(:success)
    end
  end

end
