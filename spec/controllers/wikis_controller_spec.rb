require 'rails_helper'

RSpec.describe WikisController, type: :controller do
  let(:my_wiki) { create(:wiki) }
  let(:my_user) { create(:user) }

  describe "GET #index" do
    it "returns http success" do
      sign_in my_user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      sign_in my_user
      get :show, {id: my_wiki.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      sign_in my_user
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      sign_in my_user
      get :edit, {id: my_wiki.id}
      expect(response).to have_http_status(:success)
    end
  end

end
