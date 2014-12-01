class Contact < ActiveRecord::Base
  belongs_to :company
  belongs_to :function
  belongs_to :industry
  belongs_to :location
  belongs_to :user
  has_many :meetings
  has_many :industries, :through => :companies
  has_many :events, :through => :meetings

  validates :user, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :function, :presence => true
  validates :company, :presence => true
  validates :location, :presence => true

  def contactcount
    return company.contact.count
  end

  def fullname
    return "#{self.firstname} #{self.lastname}"
  end

  def fullnameandco
    return "#{self.fullname} (#{self.company.name})"
  end
end
