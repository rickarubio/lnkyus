class Url < ActiveRecord::Base
  attr_accessible :address
  validates :address, presence: true, format: { with: /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }
end
