class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string       :title,                null: false
      t.text         :ingredient,            null: false
      t.text         :explanation,          null: false
      t.integer      :time_required_id,     null: false
      t.integer      :number_of_people_id,  null: false
      t.integer      :category_id,          null: false
      t.references   :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
