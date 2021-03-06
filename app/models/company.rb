class Company < ActiveRecord::Base
  belongs_to :industry
  has_many :contacts
  has_many :meetings, :through => :contacts
  has_many :functions, :through => :contacts
  has_many :locations, :through => :contacts
  has_many :events, :through => :meetings

  validates :name, :presence => true
  validates :industry, :presence => true

  def contactcount
    return self.contacts.count
  end

end
