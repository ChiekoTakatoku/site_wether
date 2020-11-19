class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  has_many :favorites

  has_many :relations
  # # 能動的関係（主から見たフォロー先）
  # has_many :relations, dependent: :destroy
  # has_many :folloeings, through: :relations, source: :follow
  # # 受動的関係（主から見たフォロワー）
  # has_many :reverse_of_relations, class_name: 'Relation', foreign_key: 'follow_id', depenndent: :destroy
  # has_many :followers, through: :reverse_of_relations, source: :user
end
