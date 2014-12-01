class Industry < ActiveRecord::Base
  has_many :companies
  has_many :contacts, :through => :companies

  validates :name, :presence => true

end
