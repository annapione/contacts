class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :contact_id
      t.integer :event_id
      t.datetime :date

      t.timestamps

    end
  end
end
