class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :country
      t.integer :looking_for
      t.integer :my_skill
      t.text :summary
      t.integer :involvement
      t.timestamps null: false
    end
  end
end
