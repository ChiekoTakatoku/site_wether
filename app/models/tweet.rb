class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :comments
  has_many :favorites

  belongs_to_active_hash :wether
  belongs_to_active_hash :temperature
  belongs_to_active_hash :wind
  belongs_to_active_hash :prefecture

  validates :wether_id, :temperature_id, :wind_id, :prefecture_id, numericality: { other_than: 0 }
end
