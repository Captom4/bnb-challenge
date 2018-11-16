class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.float :price_per_night
      t.date :available_from
      t.date :available_to

      t.timestamps
    end
  end
end
