class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :product_id
      t.integer :user_id
      t.string :description
      t.integer :rating
      t.timestamps :createdat
      t.datetime :updatedat

      t.timestamps null: false
    end
  end
end
