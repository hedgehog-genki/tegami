require 'rails_helper'

RSpec.describe Letter, type: :model do
  before do
    @letter = FactoryBot.build(:letter)
  end

  describe '手紙の登録' do
    context '手紙が登録できる場合' do
      it 'テキストがあれば登録できる' do
        expect(@letter).to be_valid
      end
    end
    context '手紙が登録できない場合' do
      it 'テキストが空では登録できない' do
        @letter.text = ''
        @letter.valid?
        expect(@letter.errors.full_messages).to include "Text can't be blank"
      end
      it 'ユーザーと紐づいていないと登録できない' do
        @letter.user = nil
        @letter.valid?
        expect(@letter.errors.full_messages).to include 'User must exist'
      end
    end
  end
end
