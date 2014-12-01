class Meeting < ActiveRecord::Base
  belongs_to :contact
  belongs_to :event
  belongs_to :user
  has_one :company, :through => :contacts
  has_many :functions, :through => :contacts
  has_many :indutries, :through => :contacts
  has_many :locations, :through => :contacts

  validates :contact, :presence => true
  validates :event, :presence => true
  validates :user, :presence => true

end
