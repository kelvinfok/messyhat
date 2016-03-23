class CreateInvolvement < ActiveRecord::Migration
  def change
    create_table :involvements do |t|
      t.string :name
    end
  end
end
