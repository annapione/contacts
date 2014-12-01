class Event < ActiveRecord::Base
  belongs_to :user
  has_many :meetings
  has_many :contacts, :through => :meetings
  has_many :companies, :through => :contacts

  validates :name, :presence => true
  validates :user, :presence => true
  validates :date, :presence => true


end
