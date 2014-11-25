class Contact < ActiveRecord::Base
  belongs_to :company
  belongs_to :function
  belongs_to :industry
  belongs_to :location
  belongs_to :user
  has_many :meetings
  has_many :industries, :through => :companies
  has_many :events, :through => :meetings

  def fullname
    return "#{self.firstname} #{self.lastname}"
  end
end
