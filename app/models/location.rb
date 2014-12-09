class Location < ActiveRecord::Base
  has_many :contacts
  has_many :companies, :through => :contacts

  validates :city, :presence => true

  def contactcount
    return self.contacts.count
  end

end
