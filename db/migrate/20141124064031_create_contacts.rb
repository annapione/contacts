class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :industry_id
      t.integer :function_id
      t.integer :company_id
      t.integer :location_id
      t.string :job_title
      t.string :notes
      t.integer :user_id

      t.timestamps

    end
  end
end
