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

def self.to_csv(options = {})
  # CSV.generate do |csv|
  #   csv << column_names
  #   self.each do |contact|
  #     csv << contact.attributes.values
  #   end
  # end

  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |contact|
      csv << contact.attributes.values_at(*column_names)
    end
  end
end


  def fullname
    return "#{self.firstname} #{self.lastname}"
  end

  def fullnameandco
    return "#{self.fullname} (#{self.company.name})"
  end
end
