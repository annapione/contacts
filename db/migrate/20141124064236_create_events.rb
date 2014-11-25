class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :company_id
      t.string :location
      t.datetime :date
      t.integer :user_id

      t.timestamps

    end
  end
end
