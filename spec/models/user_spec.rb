require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(email:"test@user", password:"password")
  end

  describe 'バリデーション' do
    it 'emailとpasswordどちらも値が設定されていれば、OK' do
      expect(@user.valid?).to eq(true)
    end
  end
end