require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Can click on Add button to update and add items to cart" do
    visit root_path

    first('article.product').click_button('Add')

    sleep 5

    expect(page).to have_content 'My Cart (1)'
    save_screenshot "addCart.png"
  end
end
