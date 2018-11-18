class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.belongs_to :space
      t.date :booked_date
      t.belongs_to :user, index: true
      # 0 = not acted on
      # 1 = denied
      # 2 = accepted
      t.integer :state, default: 0
      t.timestamps
    end
  end
end
