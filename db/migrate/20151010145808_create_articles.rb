class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.numeric :price
      t.timestamps null: false
    end
  end
end
