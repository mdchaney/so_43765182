class User < ApplicationRecord
  has_many :permissions, inverse_of: :user
  has_many :media, class_name: 'Medium::Medium', through: :permissions, source: :permitable, source_type: 'Medium::Medium'
end
