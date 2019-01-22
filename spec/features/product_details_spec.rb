require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

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

  scenario "Can click on product, and is redirected to product details page" do
    visit root_path

    first('article.product').find_link('Details').click

    sleep 5
    save_screenshot "test.png"

    # expect(page).to have_content 'Rating Review'
  end
end