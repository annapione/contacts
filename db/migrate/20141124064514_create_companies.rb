class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :industry_id
      t.string :description

      t.timestamps

    end
  end
end
