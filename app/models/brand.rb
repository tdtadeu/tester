class Brand < ActiveRecord::Base
  has_many :partners
  validates :name, :sms, uniqueness: true, presence: true
  validates :sms, length: { in: 5..40 }
  dragonfly_accessor :logo
end
