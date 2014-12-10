class Event < ActiveRecord::Base
  belongs_to :user
  has_many :meetings
  has_many :contacts, :through => :meetings
  has_many :companies, :through => :contacts

  validates :name, :presence => true
  validates :user, :presence => true
  validates :date, :presence => true

  def contactcount
    return self.contacts.count
  end

def self.to_csv(options = {})
  # CSV.generate do |csv|
  #   csv << column_names
  #   self.each do |contact|
  #     csv << contact.attributes.values
  #   end
  # end

  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |event|
      csv << event.attributes.values_at(*column_names)
    end
  end
end

end
