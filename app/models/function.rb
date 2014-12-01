class Function < ActiveRecord::Base
  has_many :contacts
  has_many :companies, :through => :contacts

  validates :name, :presence => true

end
