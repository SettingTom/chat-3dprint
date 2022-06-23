require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryBot.build(:product)
  end

  describe '作品投稿' do
    context '作品投稿できるとき' do
      it 'name、text、imagesが存在すれば投稿できる' do
        expect(@product).to be_valid
      end
    end

    context '作品投稿できないとき' do
      it 'nameが空では投稿できない' do
        @product.name = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Name can't be blank")
      end
      it 'textが空では投稿できない' do
        @product.text = ''
        @product.valid?
        expect(@product.errors.full_messages).to include("Text can't be blank")
      end
      it 'imagesが空では投稿できない' do
        @product.images = nil
        @product.valid?
        expect(@product.errors.full_messages).to include("Images can't be blank")
      end
      it 'userが紐づいていなければ投稿できない' do
        @product.user = nil
        @product.valid?
        expect(@product.errors.full_messages).to include('User must exist')
      end
    end
  end
end
