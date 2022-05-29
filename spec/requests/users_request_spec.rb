require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before do
    @user = User.create(email:"samples@email.com",password:"password")
  end
  describe 'GET index' do
    before do
      sign_in(@user)
    end
    it "200httpレスポンスを返す" do
      get posts_path
      expect(response.status).to eq 200
    end
    it "indexページが表示される" do
      get posts_path
      expect(response).to render_template :index
    end
  end
end