class Partner < ActiveRecord::Base
  belongs_to :brand
  validates :partner_type, inclusion: { in: %w(printed web online), allow_nil: true }
  validates :stock_type, inclusion: { in: %w(batch online no_stock) }
  validates :logo, :url, :partner_type, :stock_type, presence: true
  dragonfly_accessor :logo
end
