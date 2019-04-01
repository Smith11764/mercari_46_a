class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user
  has_one :image, dependent: :destroy
  accepts_nested_attributes_for :image
  validates :name,                    presence: true, length: { maximum: 40 }
  validates :description,             presence: true, length: { maximum: 1000 }
  validates :state,                   presence: true
  validates :delivery_fee_payer,      presence: true
  validates :shipping_method,         presence: true
  validates :shipping_source_area,    presence: true
  validates :estimated_shipping_date, presence: true
  validates :price,                   presence: true
end
