class Url < ActiveRecord::Base
  attr_accessible :address
  validates :address, presence: true, format: { with: /[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix }
  validates :short, presence: true, uniqueness: true
  before_validation :generate_short_url

  def generate_short_url
    base62 = ('0'..'9').to_a.push(('a'..'z').to_a).push(('A'..'Z').to_a).flatten
    num_of_chars = 3
    begin
      generated_url = base62.shuffle.take(num_of_chars).join("")
      num_of_chars += 1
    end until Url.where(short: generated_url).empty?
    self.short = generated_url
  end
end
