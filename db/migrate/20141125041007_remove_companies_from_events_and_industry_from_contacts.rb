class RemoveCompaniesFromEventsAndIndustryFromContacts < ActiveRecord::Migration
  def change
     remove_column :events, :company_id
     remove_column :contacts, :industry_id
  end
end
