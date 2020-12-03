require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
      # sleep(1)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまくいくとき' do
        it "必須項目を入力し、ユーザー登録ができる" do
          expect(@user).to be_valid
        end

        it "passwordが6文字以上であれば登録できる" do
          @user.password = "111aaa"
          @user.password_confirmation = "111aaa"
          expect(@user).to be_valid
        end
      end

      context '新規登録がうまくいかないとき' do
        it "メールアドレスがからの時" do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Eメールを入力してください")
        end

        it "パスワードが空の時" do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードを入力してください")
        end

        it "パスワードが6文字未満の時" do
          @user.password = 'aaaaa'
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
        end

        it "メールアドレスは＠を含む必要がある" do
          @user.email = 111
          @user.valid?
          expect(@user.errors.full_messages).to include("Eメールは不正な値です")
        end

        it "パスワードは半角英数字である" do
          @user.password = '１１１ａａａ'
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは不正な値です")
        end

        it "パスワードは確認用を含めて2回入力する" do
          @user.password_confirmation = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
        end

        it "重複したemalが存在する場合登録できない"do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
        end
      end
    end
  end
end