class Location < ActiveRecord::Base
  has_many :contacts

  validates :city, :presence => true

end
