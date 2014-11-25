class Contact < ActiveRecord::Base
  belongs_to :company

  def fullname
    return "#{self.firstname} #{self.lastname}"
  end
end
