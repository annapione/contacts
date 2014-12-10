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


def self.to_csv(options = {})
  # CSV.generate do |csv|
  #   csv << column_names
  #   self.each do |contact|
  #     csv << contact.attributes.values
  #   end
  # end

  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |meeting|
      csv << meeting.attributes.values_at(*column_names)
    end
  end
end

end
