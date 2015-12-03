class Brand < ActiveRecord::Base
  validates :name, :sms, uniqueness: true, presence: true
  validates :sms, length: { in: 5..40 }
  dragonfly_accessor :logo
end
