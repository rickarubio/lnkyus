class Url < ActiveRecord::Base
  attr_accessible :address
  validates :address, presence: true

end
