require 'rails_helper'

RSpec.describe Product, type: :model do

    before :each do 
      @category = Category.new(
        id: 1,
        name: 'Apparel'
      )

      @category.save

      @product = Product.new(
        name: 'Michael',
        price_cents: 6499,
        quantity: 20,
        category_id: @category.id
      )

      @product.save
    end

    describe 'code validations' do
      it 'should save for all fields set' do
        expect(@product).to be_valid
      end
      
      it 'name is not valid' do
        @product.name = nil

        expect(@product).to_not be_valid
      end

      it 'price is not valid' do
        @product.price_cents = nil
        
        expect(@product).to_not be_valid
      end

      it 'quantity is not valid' do
        @product.quantity = nil

        expect(@product).to_not be_valid
      end

      it 'category_id is not valid' do
        @product.category_id = nil

        expect(@product).to_not be_valid
      end

    end  
  
end

