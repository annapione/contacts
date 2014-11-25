class Event < ActiveRecord::Base
  has_many :meetings
  has_many :contacts, :through => :meetings
  has_many :companies, :through => :contacts
end
