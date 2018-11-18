class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.belongs_to :space
      t.date :booked_date
      t.belongs_to :user, index: true
      t.boolean :accepted, default: false
      t.timestamps
    end
  end
end
