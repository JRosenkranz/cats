class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.date   :date_of_birth	
      t.timestamps null: false
    end
  end
end
