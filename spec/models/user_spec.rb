require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'auth情報からユーザを検索、または作成する' do
    subject { User.find_or_create_from_auth_hash!(auth_hash) }
    let(:auth_hash) { { provider: 'Github', uid: 123, info: { nickname: 'test user', image: 'http://example.com/1.jpg' } } }
    context 'ユーザが存在しない場合' do
      it 'ユーザが作成されること' do
        is_expected.to be_valid
      end
    end
  end
end
