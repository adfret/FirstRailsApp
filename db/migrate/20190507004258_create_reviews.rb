class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
    end
  end
end
